.class final enum Lcom/uc/webview/export/internal/setup/ae$b;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/internal/setup/ae$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum b:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum c:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum d:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum e:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum f:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum g:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum h:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum i:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum j:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum k:Lcom/uc/webview/export/internal/setup/ae$b;

.field public static final enum l:Lcom/uc/webview/export/internal/setup/ae$b;

.field private static final synthetic m:[Lcom/uc/webview/export/internal/setup/ae$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v1, "SETUP_GLOBAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ae$b;->a:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 35
    new-instance v1, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v3, "CHECK_OLD_KERNEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uc/webview/export/internal/setup/ae$b;->b:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 36
    new-instance v3, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v5, "VERIFY_SDK_SHELL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uc/webview/export/internal/setup/ae$b;->c:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 37
    new-instance v5, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v7, "VERIFY_CORE_JAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/uc/webview/export/internal/setup/ae$b;->d:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 38
    new-instance v7, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v9, "LOAD_SDK_SHELL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 39
    new-instance v9, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v11, "CHECK_VERSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/uc/webview/export/internal/setup/ae$b;->f:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 40
    new-instance v11, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v13, "CHECK_SO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/uc/webview/export/internal/setup/ae$b;->g:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 41
    new-instance v13, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v15, "CHECK_PAK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/uc/webview/export/internal/setup/ae$b;->h:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 42
    new-instance v15, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v14, "INIT_SDK_SETTINGS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/uc/webview/export/internal/setup/ae$b;->i:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 43
    new-instance v14, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v12, "SETUP_CORE_FACTORY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/uc/webview/export/internal/setup/ae$b;->j:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 44
    new-instance v12, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v10, "INIT_UCMOBILE_WEBKIT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/uc/webview/export/internal/setup/ae$b;->k:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 45
    new-instance v10, Lcom/uc/webview/export/internal/setup/ae$b;

    const-string v8, "SETUP_PRINT_LOG"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/uc/webview/export/internal/setup/ae$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/uc/webview/export/internal/setup/ae$b;->l:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 33
    const/16 v8, 0xc

    new-array v8, v8, [Lcom/uc/webview/export/internal/setup/ae$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/uc/webview/export/internal/setup/ae$b;->m:[Lcom/uc/webview/export/internal/setup/ae$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/uc/webview/export/internal/setup/ae$b;
    .locals 1

    .line 33
    sget-object v0, Lcom/uc/webview/export/internal/setup/ae$b;->m:[Lcom/uc/webview/export/internal/setup/ae$b;

    invoke-virtual {v0}, [Lcom/uc/webview/export/internal/setup/ae$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/internal/setup/ae$b;

    return-object v0
.end method
