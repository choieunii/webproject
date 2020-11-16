<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입: 자세히보기</title>

    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">

    <style>
        body {
            background-color: #f8f9fa;
            margin: 100px 170px 100px 170px;
            position: relative;
        }

        h3 {
            margin-top: 30px;
            margin-left: 50px;
        }

        h5 {
            margin-top: 0px;
            margin-left: 60px;
        }

        #box_m {
            background-color: white;
            margin: auto;
            width: 1000px;
            border: 1px solid grey;
            border-radius: 3px;
            padding: 30px;
        }

        #back {
            border: 1px solid grey;
            border-radius: 6px;
            padding: 10px;
            width: 200px;
            text-align: center;
            font-size: 13px;
            margin-bottom: 40px;
            margin-left: 40%;
        }
    </style>
</head>

<body>
    <%
        public void show(){
            var str = request.getParameter("check");
            
            if (str == "service") {
                document.getElementById("service").style.display = "block";
            } else if (str == "personal") {
                document.getElementById("personal").style.display = "block";
            } else if (str == "marketing") {
                document.getElementById("marketing").style.display = "block";
            }
        }
                // 탭 닫기 
        public void confirm() {
            window.close();
       }

    %>
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="#"> <em><img src="assets/img/teamlogo_made.png" alt="teamlogo"
                                    onclick="location.href='mega292_13.html'"></em><br>
                        </a>
                    </h1>
                </div>
            </div>
        </div>
    </header>
    <br>

    <button id="back" onclick="confirm"> 확 인 완 료 </button>

    <div id="box_m">
        <!-- 파라미터가 service -->
        <div id="service" style="display: none;">
            <h4>서비스 이용약관 동의</h4>
            <p>
                충무로영화관 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. <br><br>
                본 약관은 다양한 네이버 서비스의 이용과 관련하여 충무로영화관 서비스를 제공하는 충무로영화관 주식회사(이하 '충무로영화관')와 이를 이용하는
                충무로영화관 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 충무로영화관 서비스 이용에 도움이 될 수 있는
                유익한 정보를 포함하고 있습니다.
            </p>
            충무로영화관 서비스를 이용하시거나 충무로영화관 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나
            동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다. 서비스 이용 중에 개인정보가 추가로 수집될 수 있습니다. <br>
            이 경우 개인정보를 수집하기 전에 개인정보의 수집과 이용에 대해 미리 알려 드리고 동의를 받습니다.<br><br>

            네이버에 접속할 때<br><br>

            서비스를 이용할 때 자동으로 만들어지는 정보들이 저장, 수집될 수 있습니다. 그리고 이용한 휴대전화, 컴퓨터와 같은 기기 정보 중 변경이 어려운 고유한 정보를 수집할 때는 원래의 내용을 알 수
            없도록 변경하여 수집합니다.<br><br>

            IP주소, 쿠키, 서비스 이용 기록, 서비스 이용 기계(휴대전화, 컴퓨터 등)에 대한 정보, 위치 정보<br><br>

            ※ IP(아이피)와 쿠키에 대한 설명<br><br>

            1. IP (아이피) 주소란?<br>
            인터넷을 이용하는 기기(휴대전화, 컴퓨터 등)의 '인터넷 주소 정보'를 말합니다.<br><br>

            2. 쿠키란?<br>

            인터넷 사이트를 통해 이용자의 컴퓨터 등에 저장되는 정보를 말합니다. 쿠키는 이용자가 인터넷을 이용할 때 이전에 이용했던 인터넷 이용 환경으로 빠르게 연결할 수 있게 합니다. 또한 저장해 두었던
            내용을 다시 보여 주는 등 편리한 이용을 돕는데 사용됩니다.<br>
            위치 정보를 활용하는 네이버 서비스의 위치정보 이용 등에 대한 자세한 내용은 ‘네이버 위치정보 이용약관’ 에서 안내해 드리고 있습니다.<br>

        </div>
        <!-- 파라미터가 personal -->
        <div id="personal" style="display: none;">
            <h4>개인정보 수집 및 이용동의</h4>

            개인정보보호법에 따라 충무로영화관에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한
            사항을
            안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
            <p>
                <ol>
                    <li>수집하는 개인정보<br><br>
                        이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 충무로영화관 서비스를 회원과 동일하게 이용할 수 있습니다.
                        이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우,
                        충무로영화관은 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br><br>

                        서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나
                        음성이
                        수집될 수
                        있습니다.
                    </li>
                    <br><br>
                    <li>
                        수집한 개인정보의 이용<br><br>
                        충무로영화관 및 충무로영화관 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상,
                        안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.<br><br>

                        - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등
                        회원관리를 위하여 개인정보를 이용합니다.<br>
                        - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성,
                        지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.<br>
                        - 법령 및 충무로영화관 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한
                        방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를
                        이용합니다.
                        - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.<br>
                        - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.<br>
                        - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.<br>
                        - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.<br>
                    </li>
                    <br><br>
                    <li>
                        개인정보의 보관기간<br><br>
                        회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.<br>
                        단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안
                        개인정보를 안전하게 보관합니다.<br><br>

                        참고로 충무로영화관은 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.

                    </li>
                    <br><br>
                    <li>
                        개인정보 수집 및 이용 동의를 거부할 권리<br><br>
                        이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 최소한의 개인정보,
                        즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.<br>

                    </li>
                </ol>
            </p>
        </div>



        <!-- 파라미터가 marketing -->
        <div id="marketing" style="display: none;">
            <h4>마케팅 활용을 위한 개인정보 수집 이용</h4>

            충무로영화관에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(충무로영화관앱 알림 또는 문자), 이메일로 받아보실 수 있습니다.
            일부 서비스(별도 회원 체계로 운영하거나 충무로영화관 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우,
            개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.<br>
        </div>
    </div>
</body>

</html>