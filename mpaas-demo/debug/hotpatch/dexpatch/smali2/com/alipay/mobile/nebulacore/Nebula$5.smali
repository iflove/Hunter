.class final Lcom/alipay/mobile/nebulacore/Nebula$5;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula;->b(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    return-void

    .line 833
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 834
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 835
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "logUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " logUrl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5Nebula"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 842
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object v1, v4

    .line 845
    .local v1, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->a:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 847
    .end local v1    # "td":Landroid/app/ActivityManager$TaskDescription;
    return-void

    .line 848
    :cond_1
    move-object v1, v3

    .line 849
    .local v1, "finalLogUrl":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebulacore/Nebula$5$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/Nebula$5$1;-><init>(Lcom/alipay/mobile/nebulacore/Nebula$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 866
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "finalLogUrl":Ljava/lang/String;
    .end local v3    # "logUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method
