# app.py 
from flask import Flask, render_template, request

# 서버 인스턴스 생성
app = Flask(__name__)

# 엔드포인트 1: 입력화면(/n)
@app.route('/')               # localhost:5000/ 로 요청이 들어오면
def input_page():             # 이 함수를 실행하겠다. 
    return render_template('in.html')   # in.html 갖다 줘라 (응답해라)


# 엔드포인트 2: 출력화면(/out)
@app.route('/out')
def output_page():
    # 1. 사용자가 보낸 data를 추출
    urls = request.args.get('urls')
    print('----------out 도착!! ----------')
    print(urls)

    # 2. 링크를 분리한 후에

    # 3. 각 기사를 가져와서 내용만 추출하고

    # 4. GPT에게 넘겨서 댓글을 만들어 달라고 하고 

    # 5. out.html에 비벼서 보여준다.
    result = [
        '와우 좋아요',
        '엄청난 기사군요',
        '우우 별로야'
    ]




    print('---------- out 도착!! ----------')
    return render_template('out.html')

# 서버 실행
app.run(debug=True)


