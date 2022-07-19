.class Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
.super Ljava/lang/Object;
.source "SharedPrefUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/core/impl/SharedPrefUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field abort:Z

.field spLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    .line 179
    iput-boolean v0, p0, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/core/impl/SharedPrefUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/core/impl/SharedPrefUtils$1;

    .line 177
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;-><init>()V

    return-void
.end method
