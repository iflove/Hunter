.class public Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;
.super Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;
.source "NetWorkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogNetworkConnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    .param p2, "context"    # Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;->this$0:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    .line 48
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;->this$0:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    # invokes: Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a(Landroid/content/Context;)I
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->access$000(Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;Landroid/content/Context;)I

    .line 54
    return-void
.end method
