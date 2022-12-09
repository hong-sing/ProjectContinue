<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="auth.jsp" %>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Favicons -->
    <link href="/images/favicon.png" rel="icon">
    <link href="/images/apple-touch-icon.png" rel="apple-touch-icon">

    <title>Continue? | 마켓 & 모집</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">

    <script src="/js/memmodify.js"></script>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/ckeditor/ckeditor.js"></script>
    <script src="/js/jquery.cookie.js"></script>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- 모바일 사이드 메뉴 시작 -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="/"><img src="/images/logo.png" alt="" style="width: 70%"></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>${idxWishCount}</span></a></li>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__auth">
            <a href="/mem/login"><i class="fa fa-user"></i> 로그인</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li><a href="/">마켓 플레이스</a></li>
            <li><a href="/">모집 게시판</a></li>
            <li><a href="/" class="active">미니 게임</a></li>
            <li><a href="#">고객센터</a>
                <ul class="header__menu__dropdown">
                    <li><a href="/notice/noticeList">공지사항</a></li>
                    <li><a href="/">이벤트</a></li>
                    <li><a href="/">1:1문의</a></li>
                </ul>
            </li>
            <li><a href="/mypage/mypage">마이페이지</a>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
</div>
<!-- 모바일 사이드 메뉴 끝 -->

<!-- 헤더 시작 -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li>Continue?</li>
                            <li>같이 놀자, 우리</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="/seller">판매자 모드</a>
                            <a href="/admin">관리자 모드</a>
                            <a href="/mem/login">로그인</a>
                            <a href="/mem/signup">회원가입</a>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="/mypage/mypage"><i class="fa fa-user"></i> 마이페이지</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo" style="padding: 10%; text-align: center">
                    <a href="/"><img src="/images/logo.png" alt="" style="width: 100%"></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="/sales">마켓 플레이스</a></li>
                        <li><a href="/recruit">모집 게시판</a></li>
                        <li class="active"><a href="/">미니게임</a></li>
                        <li><a href="#">고객센터</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="/notice/noticeList">공지사항</a></li>
                                <li><a href="/">이벤트</a></li>
                                <li><a href="/">1:1문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="/mypage/wishlist"><i class="fa fa-heart"></i> <span>${idxWishCount}</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- 헤더 끝 -->

<!-- 카테고리 & 배너 시작 -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>카테고리</span>
                    </div>
                    <ul>
                        <li><a href="#">본체</a></li>
                        <li><a href="#">타이틀 (패키지)</a></li>
                        <li><a href="#">타이틀 (다운로드)</a></li>
                        <li><a href="#">다운로드 추가 컨텐츠 (DLC)</a></li>
                        <li><a href="#">온라인 이용권</a></li>
                        <li><a href="#">선불 번호</a></li>
                        <li><a href="#">무료 컨텐츠</a></li>
                        <li><a href="#">아미보</a></li>
                        <li><a href="#">프로컨트롤러</a></li>
                        <li><a href="#">조이콘</a></li>
                        <li><a href="#">주변 기기</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div>
                    <div class="search_form">
                        <form action="/sales/search">
                            <select id="ctg" name="ctg">
                                <option value="ALL" selected>모든 카테고리</option>
                                <option value="MN">본체</option>
                                <option value="PT">타이틀(패키지)</option>
                                <option value="DT">타이틀(다운로드)</option>
                                <option value="DL">다운로드 추가 컨텐츠 (DLC)</option>
                                <option value="OL">온라인 이용권</option>
                                <option value="PN">선불 번호</option>
                                <option value="FC">무료 컨텐츠</option>
                                <option value="AM">아미보</option>
                                <option value="PC">프로컨트롤러</option>
                                <option value="JC">조이콘</option>
                                <option value="AC">주변 기기</option>
                            </select>
                            <input class="search_keyword" type="text" id="keyword" name="keyword">
                            <button type="submit" class="site-btn-search">검색</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <img src="/images/coupon.png">
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>첫 구매 쿠폰 코드</h5>
                            <span>A0002</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 카테고리 & 배너 끝 -->