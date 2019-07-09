
import urllib.request
import json
import urllib3
import json
import pymysql

def get_access_token():
    """
    获取百度AI平台的Access Token
    """
    host = 'https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id=GKyoPDa3HEpGldSkndR839yn&client_secret=uWhGjKHna5Y0PYmcBCHEWdpFxe2uTSbo'
    request = urllib.request.Request(host)
    request.add_header('Content-Type', 'application/json; charset=UTF-8')
    response = urllib.request.urlopen(request)
    content = response.read().decode('utf-8')
    rdata = json.loads(content)
    return rdata['access_token']
	
def get_result_value(sentence,createTime):
    urllib3.disable_warnings()
    access_token=get_access_token()
    http=urllib3.PoolManager()
    url='https://aip.baidubce.com/rpc/2.0/nlp/v1/sentiment_classify?access_token='+access_token
    #url='https://aip.baidubce.com/rpc/2.0/nlp/v1/emotion?access_token='+access_token
    params={'text':sentence}
    #进行json转换的时候，encode编码格式不指定也不会出错
    encoded_data = json.dumps(params).encode('GBK')
    request=http.request('POST', 
                          url,
                          body=encoded_data,
                          headers={'Content-Type':'application/json'})
    #对返回的byte字节进行处理。Python3输出位串，而不是可读的字符串，需要进行转换 
    #注意编码格式
    result = json.loads(str(request.data,'GBK'))
    print(result)
    print(result.get("text"))
    print(result.get("items")[0].get("positive_prob"))
    sqla = '''
        insert into t_result(createTime,text,positive_prob,confidence,negative_prob,sentiment)
        values(%s,%s,%s,%s,%s,%s);
           '''
    try:
        A = cur.execute(sqla,(createTime,result.get("text"),result.get("items")[0].get("positive_prob"),result.get("items")[0].get("confidence"),result.get("items")[0].get("negative_prob"),result.get("items")[0].get("sentiment")))
        conn.commit()
        print('成功')
    except:
        print("错误")

url="https://datacenter.tuling123.com/log/get?callback=jQuery111108582726722830769_1543049114377&memberId=790083&apikey=dd508ce07f084d6f9b4bb4aadaacc901&type=today&startDate=&endDate=&seachType=all&pageNum=1&moduleid=&userid=&keywords=&reverse=true&_=1543049114378"
conn = pymysql.connect(host='localhost', user='root', password='123456', db='neoivhsdpdb',charset="utf8")
cur = conn.cursor()
#获取json格式的字符串
page=urllib.request.urlopen(url)
data=page.read()
string = bytes.decode(data)
n = string.find("{")
#转换成python中的字典格式，用json.loads()方法
ddata=json.loads(string[n:len(string)-1])

#循环获取titile属性的值
for ddataValue in ddata.get("content"):
    print(ddataValue.get("question"))
    get_result_value(ddataValue.get("question"),ddataValue.get("createTime"))