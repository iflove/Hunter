.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;
.super Ljava/lang/Object;
.source "ConfigServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->doRefreshSharedSwitch(Landroid/content/ContextWrapper;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

.field final synthetic val$contextWrapper:Landroid/content/ContextWrapper;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Landroid/content/ContextWrapper;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    .line 1192
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;->val$contextWrapper:Landroid/content/ContextWrapper;

    iput-object p3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;->val$contextWrapper:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$3;->val$map:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V

    .line 1196
    return-void
.end method
