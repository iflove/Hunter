.class final Lcom/alipay/mobile/common/logging/render/PendingRender$1;
.super Ljava/util/ArrayList;
.source "PendingRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/render/PendingRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/render/PendingRender$1;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/render/PendingRender$1;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/render/PendingRender$1;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/render/PendingRender$1;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
