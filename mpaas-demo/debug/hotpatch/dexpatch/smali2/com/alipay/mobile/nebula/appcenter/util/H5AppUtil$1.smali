.class final Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;
.super Ljava/lang/Object;
.source "H5AppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

.field final synthetic val$provider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$provider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$provider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$version:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil$1;->val$callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 807
    return-void
.end method
