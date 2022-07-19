.class final enum Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
.super Ljava/lang/Enum;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AcquiredConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum NORMAL:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 102
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 105
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v3, "RECONFIGURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 108
    new-instance v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v5, "DISCARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 100
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    const-class v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1

    .line 100
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v0}, [Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method
