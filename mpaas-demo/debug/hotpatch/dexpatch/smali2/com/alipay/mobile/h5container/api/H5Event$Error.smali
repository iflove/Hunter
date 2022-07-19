.class public final enum Lcom/alipay/mobile/h5container/api/H5Event$Error;
.super Ljava/lang/Enum;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/h5container/api/H5Event$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 154
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string v3, "NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string v5, "INVALID_PARAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string v9, "FORBIDDEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 153
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobile/h5container/api/H5Event$Error;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 153
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .line 153
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5Event$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method
