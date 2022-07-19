.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 779
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->h:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->a:Landroid/content/Context;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->b:I

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->d:Landroid/graphics/drawable/StateListDrawable;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 11
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    .line 783
    const-string v0, "H5BaseTabBar"

    const-string v1, "loadImageAsync offlinepkg already exist package"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 787
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 788
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 790
    .local v1, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v0

    iget v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 791
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 803
    .end local v1    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->h:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->d:Landroid/graphics/drawable/StateListDrawable;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->a:Landroid/content/Context;

    iget v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->b:I

    iget-boolean v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->c:Z

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;->g:Landroid/os/Bundle;

    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 806
    return-void
.end method
