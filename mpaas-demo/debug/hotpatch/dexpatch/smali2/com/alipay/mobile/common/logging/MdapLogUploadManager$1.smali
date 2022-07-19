.class final Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;
.super Ljava/util/ArrayList;
.source "MdapLogUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
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

    .line 36
    const-string v0, "RPC"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "MMTP"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "MASS"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "NETWORKH5"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "MISC"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v0, "mdaplog"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "keybiztrace"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "footprint"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 49
    const-string/jumbo v0, "trafficLog"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "dataflow"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager$1;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
