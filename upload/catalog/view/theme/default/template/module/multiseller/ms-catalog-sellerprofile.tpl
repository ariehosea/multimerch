<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $text_heading; ?></h1>
  <?php if ($seller) { ?>
    <div class="ms-sellerprofile">
    	<div class="seller-data">
    		<div class="avatar-box">
    			<h2><?php echo $seller['nickname']; ?></h2>
    			<img src="<?php echo $seller['thumb']; ?>" />
    		</div>
    		<div class="info-box">
    			<?php if ($seller['country']) { ?>
	    			<p><b><?php echo $ms_catalog_seller_profile_country; ?></b> <?php echo $seller['country']; ?></p>
	    		<?php } ?>

	    		<?php if ($seller['company']) { ?>
	    			<p><b><?php echo $ms_catalog_seller_profile_company; ?></b> <?php echo $seller['company']; ?></p>
	    		<?php } ?>
	    		
	    		<?php if ($seller['website']) { ?>
	    			<p><b><?php echo $ms_catalog_seller_profile_website; ?></b> <?php echo $seller['website']; ?></p>
	    		<?php } ?>
	    		
	    		<p><b><?php echo $ms_catalog_seller_profile_totalsales; ?></b> <?php echo $seller['total_sales']; ?></p>
	    		<p><b><?php echo $ms_catalog_seller_profile_totalproducts; ?></b> <?php echo $seller['total_products']; ?></p>
    		</div>
    	</div>
    	
    	<div class="seller-description">
    	    <h4>About the seller</h4>
    	    <?php echo $seller['description']; ?>
    	</div>
    </div>
  <?php } ?>
  
  <?php if ($seller['products']) { ?>
	<div class="box">
	  <div class="box-heading"><?php echo $ms_catalog_seller_profile_products; ?></div>
	  <div class="box-content">
	    <div class="box-product">
	      <?php foreach ($seller['products'] as $product) { ?>
	      <div>
	        <?php if ($product['thumb']) { ?>
	        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
	        <?php } ?>
	        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	        <?php if ($product['price']) { ?>
	        <div class="price">
	          <?php if (!$product['special']) { ?>
	          <?php echo $product['price']; ?>
	          <?php } else { ?>
	          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
	          <?php } ?>
	        </div>
	        <?php } ?>
	        <?php if ($product['rating']) { ?>
	        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
	        <?php } ?>
	        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
	      </div>
	      <?php } ?>
	    </div>
	    <p style="text-align: right; margin: 0"><a href="<?php echo $seller['href']; ?>"><?php echo $ms_catalog_seller_profile_view; ?></a></p>
	  </div>
	</div>  
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>