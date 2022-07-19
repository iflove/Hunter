.class public Lcom/alipay/mobile/common/utils/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# static fields
.field private static final a:Ljavax/security/auth/x500/X500Principal;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=dev,OU=Alipay,O=Alipay,L=HangZhou,ST=ZheJiang,C=CN"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/utils/CertUtils;->a:Ljavax/security/auth/x500/X500Principal;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/CertUtils;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDevSignPackage(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "CertUtils"

    .line 35
    sget-object v1, Lcom/alipay/mobile/common/utils/CertUtils;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "packageName":Ljava/lang/String;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 44
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v5, v3

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 45
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "switch.certverifier"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    const-string v3, " KEY_SWITCH_CERTVERIFIER is true."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/common/utils/CertUtils;->b:Ljava/lang/Boolean;

    .line 48
    return v6

    .line 52
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 53
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 54
    .local v4, "signatures":[Landroid/content/pm/Signature;
    move-object v4, v3

    if-eqz v3, :cond_3

    array-length v3, v4

    if-lez v3, :cond_3

    .line 55
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 56
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v4

    .local v8, "N":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 57
    new-instance v9, Ljava/io/ByteArrayInputStream;

    aget-object v10, v4, v7

    .line 58
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 59
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/utils/CertUtils;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 60
    const-string v9, " SubjectX500Principal is DEBUG_DN."

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/alipay/mobile/common/utils/CertUtils;->b:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    return v6

    .line 56
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i":I
    .end local v8    # "N":I
    :cond_3
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, " get signature error "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/utils/CertUtils;->b:Ljava/lang/Boolean;

    .line 71
    return v0
.end method
