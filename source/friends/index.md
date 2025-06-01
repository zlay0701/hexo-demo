---
title: 友情链接
date: 2025-5-31 08:46:33
comments: true
---

<div class="post-body">
   <div id="links">
      <style>
	 .post-body{
		margin:5% 5% 5% 5%;
	  }
	    .link-navigation {
	  display: grid;
	  grid-template-columns: repeat(4, minmax(370px, 1fr));
	}
	@media (max-width: 768px) {
		.link-navigation {
		  display: grid;
		  grid-template-columns: repeat(1, minmax(330px, 1fr));
		}
	}
         .links-content{
         margin-top:1rem;
         }
         .link-navigation::after {
         content: " ";
         display: block;
         clear: both;
         }
         .card {
         width: auto;
         font-size: 1rem;
         padding: 10px 20px;
         border-radius: 4px;
         transition-duration: 0.15s;
         margin-bottom: 1rem;
         display:flex;
         }
		 @media (max-width: 768px) {
			.post-body{
				margin:5% 0% 5% 0%;
			}
			.card {
				padding: 10px 0px;
			}
		}
         .card:nth-child(odd) {
         float: left;
         }
         .card:nth-child(even) {
         float: right;
         }
         .card:hover {
		 background-color:#D4D4D4;
         transform: scale(1.1);
         box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.12), 0 0 6px 0 rgba(0, 0, 0, 0.04);
         }
         .card a {
         border:none;
         }
         .card .ava {
         width: 3rem!important;
         height: 3rem!important;
         margin:0!important;
         margin-right: 1em!important;
         border-radius:4px;
         }
         .card .card-header {
         font-style: italic;
         overflow: hidden;
         width: 100%;
         }
         .card .card-header a {
         font-style: normal;
         color: #2bbc8a;
         font-weight: bold;
         text-decoration: none;
         }
         .card .card-header a:hover {
         color: #d480aa;
         text-decoration: none;
         }
         .card .card-header .info {
         font-style:normal;
         color:#a3a3a3;
         font-size:14px;
         min-width: 0;
         overflow: hidden;
         white-space: nowrap;
         }
      </style>
      <div class="links-content">
         <div class="link-navigation">
            <div class="card">
               <img class="ava" src="/uploads/favicon-96x96_2.png" />
               <div class="card-header">
                  <div>
                     <a href="https://zhile.io/">知了(zhile.io)</a>
                  </div>
                  <div class="info">朝闻道，夕可眠矣。</div>
               </div>
            </div>
            <div class="card">
               <img class="ava" src="https://avatars.githubusercontent.com/u/5326814?s=48&v=4" />
               <div class="card-header">
                  <div>
                     <a href="https://ezlippi.github.io/">Lippi-浮生志</a>
                  </div>
                  <div class="info">Web后台开发、Android应用开发爱好者</div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>