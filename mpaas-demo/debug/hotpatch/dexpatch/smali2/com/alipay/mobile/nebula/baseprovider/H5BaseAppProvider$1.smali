.class Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;
.super Ljava/lang/Object;
.source "H5BaseAppProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

.field final synthetic val$param:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->this$0:Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->val$param:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    iput-wide p3, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->this$0:Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->val$param:Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider$1;->val$startTime:J

    # invokes: Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->updateAppWithReqFinally(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;->access$000(Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)V

    .line 153
    return-void
.end method
