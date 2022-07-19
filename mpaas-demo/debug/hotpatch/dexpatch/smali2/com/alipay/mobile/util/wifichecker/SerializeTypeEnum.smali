.class public final enum Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;
.super Ljava/lang/Enum;
.source "SerializeTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

.field public static final enum JSON:Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    .line 3
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    aput-object v0, v1, v2

    sput-object v1, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;->$VALUES:[Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;
    .locals 1

    .line 3
    const-class v0, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;->$VALUES:[Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/util/wifichecker/SerializeTypeEnum;

    return-object v0
.end method
