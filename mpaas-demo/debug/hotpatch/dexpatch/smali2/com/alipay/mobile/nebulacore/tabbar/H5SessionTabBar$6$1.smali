.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    .line 791
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->c:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->d:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->d:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 799
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->d:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 800
    return-void
.end method
