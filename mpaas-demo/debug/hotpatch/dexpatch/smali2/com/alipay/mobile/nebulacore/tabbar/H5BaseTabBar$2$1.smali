.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->onImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->d:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void
.end method
