.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    .line 838
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->b:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->b:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->b(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V

    .line 842
    return-void
.end method
