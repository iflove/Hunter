.class public final Lcom/alipay/mobile/quinox/bundle/e;
.super Ljava/lang/Object;
.source "BundleVerifier.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private final c:Z

.field private d:Lcom/alipay/mobile/quinox/security/CertVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p3, "debug"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/e;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/e;->b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->c:Z

    .line 43
    new-instance v0, Lcom/alipay/mobile/quinox/security/CertVerifier;

    invoke-direct {v0, p3}, Lcom/alipay/mobile/quinox/security/CertVerifier;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->init(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->checkSign(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->init(Landroid/content/Context;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/e;->d:Lcom/alipay/mobile/quinox/security/CertVerifier;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/security/CertVerifier;->verifyApk(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BundleVerifier"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method
