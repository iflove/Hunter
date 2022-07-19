.class public final enum Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
.super Ljava/lang/Enum;
.source "CursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/CursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sqlcrypto/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    .line 63
    new-instance v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    .line 65
    new-instance v3, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    .line 59
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->$VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
    .locals 1

    .line 59
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->$VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v0}, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-object v0
.end method
