<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.html"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                       

                    

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">관리메뉴</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i  class=" far fa-user"></i><span
                                    class="hide-menu">회원관리 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="go_admin.do" class="sidebar-link"><span
                                            class="hide-menu"> 구매자 관리
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="manage_seller.do" class="sidebar-link"><span
                                            class="hide-menu"> 판매자 관리
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="manage_category.do"
                                aria-expanded="false"><i class=" fas fa-list-ul mr-1"></i><span
                                    class="hide-menu">카테고리관리</span></a></li>
                        
                        	<li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i  class=" far fa-star"></i><span
                                    class="hide-menu">서비스관리 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="manage_service.do" class="sidebar-link"><span
                                            class="hide-menu"> 일반서비스 관리
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="manage_powerService.do" class="sidebar-link"><span
                                            class="hide-menu"> 파워서비스 일정
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                         <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="manage_promotion.do"
                                aria-expanded="false"><i class=" fas fa-gift"></i><span
                                    class="hide-menu">프로모션관리</span></a></li>
                        
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i  class="icon-credit-card"></i><span
                                    class="hide-menu">결제관리 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="manage_servicePayment.do" class="sidebar-link"><span
                                            class="hide-menu"> 서비스결제관리
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="manage_buyerPayment.do" class="sidebar-link"><span
                                            class="hide-menu"> 구매자결제조회
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="manage_sellerPayment.do" class="sidebar-link"><span
                                            class="hide-menu"> 판매자결제조회
                                        </span></a>
                                </li>
                            </ul>
                        </li>  
                        
                        
                           <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i  class="fas fa-chart-line"></i><span
                                    class="hide-menu">매출조회 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="sales_category.do" class="sidebar-link"><span
                                            class="hide-menu"> 카테고리별매출
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="all_sales.do" class="sidebar-link"><span
                                            class="hide-menu"> 전체매출
                                        </span></a>
                                </li>
                            </ul>
                        </li>  
                        
                         <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i  class=" far fa-bell mr-1"></i><span
                                    class="hide-menu">신고관리 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="report_inquiry.do" class="sidebar-link"><span
                                            class="hide-menu"> 신고관리
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="manage_blackList.do" class="sidebar-link"><span
                                            class="hide-menu"> 블랙리스트관리
                                        </span></a>
                                </li>
                            </ul>
                        </li>
      
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i class="fas fa-edit mr-1"></i><span
                                    class="hide-menu">게시글관리</span></a>
                            <ul aria-expanded="false" class="collapse first-level base-level-line">
                                
                                <li class="sidebar-item"> <a class="has-arrow sidebar-link" href="javascript:void(0)"
                                        aria-expanded="false"><span class="hide-menu">공지사항</span></a>
                                    <ul aria-expanded="false" class="collapse second-level base-level-line">
                                        <li class="sidebar-item"><a href="manage_notice.do" class="sidebar-link"><span
                                                    class="hide-menu"> 공지사항 조회</span></a></li>
                                        <li class="sidebar-item"><a href="InsertNoticeForm.do" class="sidebar-link"><span
                                                    class="hide-menu"> 공지사항 등록
                                                    </span></a></li>
                                        
                                    </ul>
                                </li>
                                <li class="sidebar-item"> <a class="has-arrow sidebar-link" href="javascript:void(0)"
                                        aria-expanded="false"><span class="hide-menu">FAQ</span></a>
                                    <ul aria-expanded="false" class="collapse second-level base-level-line">
                                        <li class="sidebar-item"><a href="manage_faq.do" class="sidebar-link"><span
                                                    class="hide-menu"> FAQ 조회</span></a></li>
                                        <li class="sidebar-item"><a href="insertFaqForm.do" class="sidebar-link"><span
                                                    class="hide-menu"> FAQ 등록
                                                    </span></a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        
                        
                        
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="grid" class="feather-icon"></i><span
                                    class="hide-menu">Tables </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="table-basic.html" class="sidebar-link"><span
                                            class="hide-menu"> Basic Table
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="table-dark-basic.html" class="sidebar-link"><span
                                            class="hide-menu"> Dark Basic Table
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="table-sizing.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Sizing Table
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="table-layout-coloured.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Coloured
                                            Table Layout
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="table-datatable-basic.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Basic
                                            Datatables
                                            Layout
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="bar-chart" class="feather-icon"></i><span
                                    class="hide-menu">Charts </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="chart-morris.html" class="sidebar-link"><span
                                            class="hide-menu"> Morris Chart
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="chart-chart-js.html" class="sidebar-link"><span
                                            class="hide-menu"> ChartJs
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="chart-knob.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Knob Chart
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="box" class="feather-icon"></i><span
                                    class="hide-menu">UI Elements </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="ui-buttons.html" class="sidebar-link"><span
                                            class="hide-menu"> Buttons
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="ui-modals.html" class="sidebar-link"><span
                                            class="hide-menu"> Modals </span></a>
                                </li>
                                <li class="sidebar-item"><a href="ui-tab.html" class="sidebar-link"><span
                                            class="hide-menu"> Tabs </span></a></li>
                                <li class="sidebar-item"><a href="ui-tooltip-popover.html" class="sidebar-link"><span
                                            class="hide-menu"> Tooltip &
                                            Popover</span></a></li>
                                <li class="sidebar-item"><a href="ui-notification.html" class="sidebar-link"><span
                                            class="hide-menu">Notification</span></a></li>
                                <li class="sidebar-item"><a href="ui-progressbar.html" class="sidebar-link"><span
                                            class="hide-menu">Progressbar</span></a></li>
                                <li class="sidebar-item"><a href="ui-typography.html" class="sidebar-link"><span
                                            class="hide-menu">Typography</span></a></li>
                                <li class="sidebar-item"><a href="ui-bootstrap.html" class="sidebar-link"><span
                                            class="hide-menu">Bootstrap
                                            UI</span></a></li>
                                <li class="sidebar-item"><a href="ui-breadcrumb.html" class="sidebar-link"><span
                                            class="hide-menu">Breadcrumb</span></a></li>
                                <li class="sidebar-item"><a href="ui-list-media.html" class="sidebar-link"><span
                                            class="hide-menu">List
                                            Media</span></a></li>
                                <li class="sidebar-item"><a href="ui-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Grid </span></a></li>
                                <li class="sidebar-item"><a href="ui-carousel.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Carousel</span></a></li>
                                <li class="sidebar-item"><a href="ui-scrollspy.html" class="sidebar-link"><span
                                            class="hide-menu">
                                            Scrollspy</span></a></li>
                                <li class="sidebar-item"><a href="ui-toasts.html" class="sidebar-link"><span
                                            class="hide-menu"> Toasts</span></a>
                                </li>
                                <li class="sidebar-item"><a href="ui-spinner.html" class="sidebar-link"><span
                                            class="hide-menu"> Spinner </span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="ui-cards.html"
                                aria-expanded="false"><i data-feather="sidebar" class="feather-icon"></i><span
                                    class="hide-menu">Cards
                                </span></a>
                        </li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Authentication</span></li>

                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="authentication-login1.html"
                                aria-expanded="false"><i data-feather="lock" class="feather-icon"></i><span
                                    class="hide-menu">Login
                                </span></a>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link"
                                href="authentication-register1.html" aria-expanded="false"><i data-feather="lock"
                                    class="feather-icon"></i><span class="hide-menu">Register
                                </span></a>
                        </li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="feather" class="feather-icon"></i><span
                                    class="hide-menu">Icons
                                </span></a>
                            <ul aria-expanded="false" class="collapse first-level base-level-line">
                                <li class="sidebar-item"><a href="icon-fontawesome.html" class="sidebar-link"><span
                                            class="hide-menu"> Fontawesome Icons </span></a></li>

                                <li class="sidebar-item"><a href="icon-simple-lineicon.html" class="sidebar-link"><span
                                            class="hide-menu"> Simple Line Icons </span></a></li>
                            </ul>
                        </li>

                        
                      
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>