.class public Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "SubPackageDownloadCallback.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;)V
    .locals 0
    .param p1, "installCallback"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;

    return-object v0
.end method
