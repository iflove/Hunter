.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCCore$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OldCoreVersionCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uc/webview/export/extension/UCCore$Callable<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;

    .line 341
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "oldCoreVersion"    # Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version callable value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->checkOldCoreVersion(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$100(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 341
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
