.class public Lcom/alipay/instantrun/utils/PatchTemplate;
.super Ljava/lang/Object;
.source "PatchTemplate.java"

# interfaces
.implements Lcom/alipay/instantrun/ChangeQuickRedirect;


# static fields
.field public static final MATCH_ALL_PARAMETER:Ljava/lang/String; = "(\\w*\\.)*\\w*"

.field private static final keyToValueRelation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/alipay/instantrun/utils/PatchTemplate;->keyToValueRelation:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static fixObj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "booleanObj"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 35
    move-object v0, p0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 36
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "booleanValue":Z
    :goto_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 39
    .end local v0    # "booleanValue":Z
    :cond_1
    return-object p0
.end method


# virtual methods
.method public accessDispatch(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramArrayOfObject"    # [Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupport(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramArrayOfObject"    # [Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    return v0
.end method
