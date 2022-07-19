.class Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$4;
.super Lcom/alibaba/fastjson/TypeReference;
.source "ConfigServiceLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->saveConfigs(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/TypeReference<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 258
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$4;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    invoke-direct {p0}, Lcom/alibaba/fastjson/TypeReference;-><init>()V

    return-void
.end method
