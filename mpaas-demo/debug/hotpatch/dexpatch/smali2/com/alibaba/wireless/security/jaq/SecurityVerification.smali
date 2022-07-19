.class public Lcom/alibaba/wireless/security/jaq/SecurityVerification;
.super Ljava/lang/Object;
.source "SecurityVerification.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/jaq/SecurityVerification;->context:Landroid/content/Context;

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public doJAQVerfificationSync(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 3
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/jaq/JAQException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/jaq/SecurityVerification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    const-class v1, Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;

    invoke-virtual {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;

    .line 33
    .local v0, "jaqVerCom":Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;->doJAQVerfificationSync(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 34
    .end local v0    # "jaqVerCom":Lcom/alibaba/wireless/security/jaq/securitybody/IJAQVerificationComponent;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 36
    new-instance v1, Lcom/alibaba/wireless/security/jaq/JAQException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/jaq/JAQException;-><init>(I)V

    throw v1
.end method
