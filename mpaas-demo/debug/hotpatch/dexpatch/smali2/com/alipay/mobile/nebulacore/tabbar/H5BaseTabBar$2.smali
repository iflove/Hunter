.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    .line 336
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->f:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->a:Landroid/content/Context;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->b:I

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->d:Landroid/graphics/drawable/StateListDrawable;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 339
    if-eqz p1, :cond_1

    .line 340
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->a:Landroid/content/Context;

    .line 341
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 342
    .local v1, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v0

    iget v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 343
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->c:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->d:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;->d:Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 348
    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 355
    .end local v1    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-void
.end method
