<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/common/header.jsp"%>

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs"><!-- 경로(빵조각) -->
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div><!-- 경로(빵조각) -->
			
			<div class="table-responsive cart_info">
				<table class="table table-condensed"><!-- cart table -->
					<thead><!-- table head -->
						<tr class="cart_menu">
							<td class="image"></td>
							<td class="description">상품</td>
							<td class="price">단가</td>
							<td class="quantity">수량</td>
							<td class="total">가격</td>
							<td></td>
						</tr>
					</thead><!-- table head -->
					
					<tbody><!-- table body-->
						<c:set var="sum" value="0"/>
						<c:forEach var="item" items="${cartItemsList }">
						<c:set var="total" value="0"/>
							<tr>
								<td class="cart_product">
									<a href=""><img src="images/cart/${item.image }" alt=""></a>
								</td>
								<td class="cart_description">
									<h4><a href="">${item.name }</a></h4>
									<p>${item }</p>
								</td>
								<td class="cart_price">
									<p>${item.price }</p>
								</td>
								<td class="cart_quantity"><!-- 나중에 board 만들어지면 수정하지 뭐~ -->
									<div class="cart_quantity_button">
										<a class="cart_quantity_down" href=""> - </a>
										<input class="cart_quantity_input" type="text" name="quantity" value="${item.count }" autocomplete="off" size="2">
										<a class="cart_quantity_up" href=""> + </a>
										<a class="btn btn-default update" href="">Update</a>
									</div>
								</td>
								<td class="cart_total">
									<c:set var="total" value="${total + item.price * item.count }"/>
									<c:set var="sum" value="${sum + total }"/>
									<p class="cart_total_price"><c:out value="${total }"/></p>
								</td>
								<td class="cart_delete">
									<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
								</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="4">&nbsp;</td>
							<td colspan="2">
								<table class="table table-condensed total-result">
									<tr class="shipping-cost">
										<td>배송비</td>
										<td>2500원</td>										
									</tr>
									<tr>
										<td>합계</td>
										<td><span>${sum + 2500 }원</span></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><a class="btn btn-default check_out" href="payment">결재하기</a></td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody><!-- table body -->
					
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->
	
	<!-- <section id="do_action">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>배송비 <span>2500원</span></li>
							<li>합계 <span>${sum + 2500 }원</span></li>
						</ul>
							<a class="btn btn-default check_out" href="payment">결재하기</a>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	
<%@include file="/WEB-INF/views/common/footer.jsp"%>