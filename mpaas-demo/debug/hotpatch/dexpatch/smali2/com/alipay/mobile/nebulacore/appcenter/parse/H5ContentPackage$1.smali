.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 239
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->a(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    .line 243
    return-void
.end method
