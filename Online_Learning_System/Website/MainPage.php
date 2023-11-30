<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: LoginForm.php");
    exit();
}

$username = $_SESSION['username'];
?>

<!Doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Learning System</title>
    <link rel="stylesheet" type="text/css" href="MainPage.css">
    <link rel ="stylesheet" href="../icon/iconfont.css">
    <link rel="icon" type="image/x-icon" href="">
    <!-- 引入 Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- 引入 Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>

<body>
    <header>
        <div id="mySidepanel" class="sidepanel">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <form action="" id="search-bar-form">
                <input type="text" id="search-bar" placeholder="Search...">
                <button type="submit" id="search-bar-submit"><i class="iconfont icon-sousuo"></i></button>
            </form>
            <a href="../ShoppingCart/ShoppingCart.html"><i class="iconfont icon-31gouwuchexuanzhong">
                    <p>Shopping Cart</p>
                </i></a>
            <a href="../UserProfile/UserProfile.html"><i class="iconfont icon-user">
                    <p>User Info</p>
                </i></a>
            <a href="../CoursePage/CoursePage.html"><i class="iconfont icon-book1">
                    <p>Course</p>
                </i></a>
            <a href="../QuizList/QuizList.html"><i class="iconfont icon-shijuan">
                    <p>Quiz</p>
                </i></a>
            <a href=""><i class="iconfont icon-guanyuwomen">
                    <p>About Us</p>
                </i></a>
            <a href=""><i class="iconfont icon-dianhua">
                    <p>Contact Us</p>
                </i></a>
                <a href="../Comment/Comment.html"><i class="iconfont icon-comment">
                    <p>Comment</p>
                </i></a>
        </div>

        <button class="openbtn" onclick="openNav()">☰</button>

        <script>
            function openNav() {
                document.getElementById("mySidepanel").style.width = "30rem";
            }

            function closeNav() {
                document.getElementById("mySidepanel").style.width = "0rem";
            }
        </script>
        <div class="left-bar">
            <div id="logo">LOGO</div>
            <ul class="menu">
                <li class="item">Category<span></span>
                    <ul>
                        <li onclick="window.location.href = '../CoursePage/CoursePage.html'">Course</li>
                        <li onclick="window.location.href = '../QuizList/QuizList.html'">Quiz</li>
                        <li onclick="window.location.href = '../Comment/Comment.html'">Comment</li>
                    </ul>
                </li>
                <li class="item">About<span></span>
                    <ul>
                        <li>About Us</li>
                        <li>Contact Us</li>
                        <li>Our Lecturer</li>
                    </ul>
                </li>
            </ul>
        </div>
        <script>
            const menuItems = document.querySelectorAll('.menu > li');

            menuItems.forEach((menuItem) => {
                const submenu = menuItem.querySelector('ul');

                // 计算子菜单的最大高度
                submenu.style.maxHeight = submenu.scrollHeight + 'px';

                // 当鼠标悬停在菜单项上时，将 max-height 设置为计算值
                menuItem.addEventListener('mouseenter', () => {
                    submenu.style.maxHeight = submenu.scrollHeight + 'px';
                });

                // 当鼠标离开时，将 max-height 重置为 0
                menuItem.addEventListener('mouseleave', () => {
                    submenu.style.maxHeight = '0';
                });
            });
        </script>
        <div class="right-bar">
            <form action="" id="search-bar-form">
                <input type="text" id="search-bar" placeholder="Search...">
                <button type="submit" id="search-bar-submit"><i class="iconfont icon-sousuo"></i></button>
            </form>
            <i class="iconfont icon-31gouwuchexuanzhong" onclick="window.location.href='../ShoppingCart/ShoppingCart.html'"></i>
            <i class="iconfont icon-user" onclick="window.location.href='../LoginForm/LoginForm.php.php'"></i>
        </div>
    </header>

    <section>
        <div class="progress-container">
            <div class="progress-bar" id="myBar"></div>
        </div>
        <script>
            // When the user scrolls the page, execute myFunction 
            window.onscroll = function () { myFunction() };

            function myFunction() {
                var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
                var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
                var scrolled = (winScroll / height) * 100;
                document.getElementById("myBar").style.width = scrolled + "%";
            }
        </script>
        <div class="swiper-container">
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="./Img/Lecturer Img 0.png" alt="Picture 1">
                </div>
                <div class="swiper-slide">
                    <img src="./Img/Lecturer Img 1.png" alt="Picture 2">
                </div>
                <div class="swiper-slide">
                    <img src="./Img/Lecturer 2.png" alt="PIcture 3">
                </div>
                <div class="swiper-slide">
                    <img src="./Img/lecturer 3.png" alt="Picture 4">
                </div>
            </div>
        </div>
        <script>
            var mySwiper = new Swiper('.swiper-container', {
                // 自动播放配置
                autoplay: {
                    delay: 3000, // 自动播放
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            });
        </script>
        <div class="introduce-container">
            <p>Simple online learning system assignments from</p>
            <div style="display: flex;">
                <img src="./Img/new-era-university-college.png" alt="New Era University College">
            </div>
        </div>

        <div class="course-container">
            <p>Explore Exciting Online Courses</p>
            <div class="course-list">
                <div class="course-detail">
                    <div class="course-detail-inner">
                        <div class="course-detail-front">
                            <img src="" alt="">
                        </div>
                        <div class="course-detail-back">
                            <h1>Course Name:</h1>
                            <hr>
                            <h1>Course Description:</h1>
                            <h2>Lecturer:</h2>
                            <h2>Price:</h2>
                            <br>
                            <h2>Estimared study time:</h2>
                            <button>Course Detail</button>
                        </div>
                    </div>
                </div>
                <div class="course-detail">
                    <div class="course-detail-inner">
                        <div class="course-detail-front">
                            <img src="" alt="">
                        </div>
                        <div class="course-detail-back">
                            <h1>Course Name:</h1>
                            <hr>
                            <h1>Course Description:</h1>
                            <h2>Lecturer:</h2>
                            <h2>Price:</h2>
                            <br>
                            <h2>Estimared study time:</h2>
                            <button>Course Detail</button>
                        </div>
                    </div>
                </div>
                <div class="course-detail">
                    <div class="course-detail-inner">
                        <div class="course-detail-front">
                            <img src="" alt="">
                        </div>
                        <div class="course-detail-back">
                            <h1>Course Name:</h1>
                            <hr>
                            <h1>Course Description:</h1>
                            <h2>Lecturer:</h2>
                            <h2>Price:</h2>
                            <br>
                            <h2>Estimared study time:</h2>
                            <button>Course Detail</button>
                        </div>
                    </div>
                </div>
                <div class="course-detail">
                    <div class="course-detail-inner">
                        <div class="course-detail-front">
                            <img src="" alt="">
                        </div>
                        <div class="course-detail-back">
                            <h1>Course Name:</h1>
                            <hr>
                            <h1>Course Description:</h1>
                            <h2>Lecturer:</h2>
                            <h2>Price:</h2>
                            <br>
                            <h2>Estimared study time:</h2>
                            <button>Course Detail</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script>
            function openPage(pageName, elmnt, color) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablink");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].style.backgroundColor = "";
                }
                document.getElementById(pageName).style.display = "block";
                elmnt.style.backgroundColor = color;
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>

        <div class="aboutus-container">
            <p>We have everything you need to study online</p>
            <div class="aboutus-container-outside">
                <div class="aboutus-container-inner">
                    <img src="" alt="">
                    <div class="content">
                        <p>High quality, carefully planned courses</p>
                    </div>
                </div>
                <div class="aboutus-container-inner">
                    <img src="" alt="">
                    <div class="content">
                        <p>Professional Lecturer</p>
                    </div>
                </div>
            </div>
            <div class="aboutus-container-outside">
                <div class="aboutus-container-inner">
                    <img src="" alt="">
                    <div class="content">
                        <p>Live Webinars and more</p>
                    </div>
                </div>
                <div class="aboutus-container-inner">
                    <img src="" alt="">
                    <div class="content">
                        <p>Engage with communities</p>
                    </div>
                </div>
                <div class="aboutus-container-inner">
                    <img src="" alt="">
                    <div class="content">
                        <p>Create a course that sells</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="tutorial-container">
            <div class="tutorial-container-inner-left">
                <img src="" alt="">
                <p>Tutorial-container</p>
                <ul>
                    <li>Good</li>
                    <li>Good</li>
                    <li>Good</li>
                </ul>
                <button>Go to buy tutorial</button>
            </div>
            <div class="tutorial-container-inner-right">
                <img src="" alt="">
            </div>
        </div>
    </section>
    <footer>
        <div class="footer-container-left">
            <p>About US</p>
            <p>Contact US</p>
            <p>Term</p>
            <p>Privacy Policy</p>
            <p>New Era University College</p>
        </div>
        <div class="footer-container-center">
            <div>
                <i class="iconfont icon-instagram">
                    <p>Instagram</p>
                </i>
            </div>
            <div>
                <i class="iconfont icon-facebook_facebook">
                    <p>Facebook</p>
                </i>
            </div>
            <div>
                <i class="iconfont icon-whatsapp">
                    <p>Whatsapp</p>
                </i>
            </div>
            <div>
                <i class="iconfont icon-wechat">
                    <p>Wechat</p>
                </i>
            </div>
        </div>
        <div class="footer-container-right">
            <p>Tutorial</p>
            <p>Quiz</p>
            <p>Lecturer</p>
            <p>Help And Support</p>
            <p>Copyright © 2021 New Era University College. All Rights Reserved.</p>
        </div>

    </footer>
</body>

</html>