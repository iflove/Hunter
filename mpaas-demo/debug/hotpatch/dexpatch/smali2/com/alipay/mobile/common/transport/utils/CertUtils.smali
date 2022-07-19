.class public Lcom/alipay/mobile/common/transport/utils/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# static fields
.field private static final a:Ljavax/security/auth/x500/X500Principal;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=dev,OU=Alipay,O=Alipay,L=HangZhou,ST=ZheJiang,C=CN"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/CertUtils;->a:Ljavax/security/auth/x500/X500Principal;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/CertUtils;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 74
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 75
    .local v1, "signatures":[Landroid/content/pm/Signature;
    move-object v1, v0

    if-eqz v0, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 76
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 77
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 78
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, v1, v2

    .line 79
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 80
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/transport/utils/CertUtils;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "CertUtils"

    const-string v5, " SubjectX500Principal is DEBUG_DN."

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/alipay/mobile/common/transport/utils/CertUtils;->b:Ljava/lang/Boolean;

    .line 83
    return v4

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final isDevSignPackage(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "CertUtils"

    .line 41
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/CertUtils;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "packageName":Ljava/lang/String;
    const/16 v3, 0x80

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 51
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v4, v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "switch.certverifier"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    const-string v3, " KEY_SWITCH_CERTVERIFIER is true."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/common/transport/utils/CertUtils;->b:Ljava/lang/Boolean;

    .line 55
    return v5

    .line 59
    :cond_1
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/CertUtils;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 60
    return v5

    .line 64
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, " get signature error "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/CertUtils;->b:Ljava/lang/Boolean;

    .line 67
    return v0
.end method
