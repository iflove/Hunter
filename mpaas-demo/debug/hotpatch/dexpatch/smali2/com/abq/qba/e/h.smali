.class public abstract Lcom/abq/qba/e/h;
.super Ljava/lang/Object;
.source "ResourceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 81
    const/4 v0, 0x0

    .local v0, "map":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 82
    move-object v0, v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ldpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tvdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "xhdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "xxhdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "xxxhdpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v1, 0xfffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anydpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "nodpi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/abq/qba/e/h;->a:Ljava/util/Map;

    .line 100
    .end local v0    # "map":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "nokeys"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "qwerty"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "12key"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/abq/qba/e/h;->b:Ljava/util/Map;

    .line 113
    .end local v0    # "map":Ljava/util/Map;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v4

    const-string v5, "keysexposed"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "keyshidden"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "keyssoft"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/abq/qba/e/h;->c:Ljava/util/Map;

    .line 126
    .end local v0    # "map":Ljava/util/Map;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 127
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v4

    const-string/jumbo v5, "nonav"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "dpad"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v4, "trackball"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "wheel"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/abq/qba/e/h;->d:Ljava/util/Map;

    .line 139
    .end local v0    # "map":Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 140
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v5

    const-string/jumbo v6, "navexposed"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "navhidden"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/abq/qba/e/h;->e:Ljava/util/Map;

    .line 149
    .end local v0    # "map":Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v5

    const-string/jumbo v6, "port"

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "land"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/abq/qba/e/h;->f:Ljava/util/Map;

    .line 160
    .end local v0    # "map":Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 161
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v5

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ldltr"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ldrtl"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/abq/qba/e/h;->g:Ljava/util/Map;

    .line 171
    .end local v0    # "map":Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 172
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v5

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "notlong"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "long"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/abq/qba/e/h;->h:Ljava/util/Map;

    .line 182
    .end local v0    # "map":Ljava/util/Map;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 183
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v7

    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "notround"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "round"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/abq/qba/e/h;->i:Ljava/util/Map;

    .line 195
    .end local v0    # "map":Ljava/util/Map;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 196
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v7

    const-string/jumbo v8, "small"

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v7, "normal"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v7, "large"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v7, "xlarge"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/abq/qba/e/h;->j:Ljava/util/Map;

    .line 207
    .end local v0    # "map":Ljava/util/Map;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 208
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v7

    const-string/jumbo v8, "notouch"

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "finger"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/abq/qba/e/h;->k:Ljava/util/Map;

    .line 218
    .end local v0    # "map":Ljava/util/Map;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v2

    const-string/jumbo v7, "notnight"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v2, "night"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/abq/qba/e/h;->l:Ljava/util/Map;

    .line 232
    .end local v0    # "map":Ljava/util/Map;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 233
    .restart local v0    # "map":Ljava/util/Map;
    move-object v0, v2

    const-string v5, "desk"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "car"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v1, "television"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appliance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "watch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/abq/qba/e/h;->m:Ljava/util/Map;

    .line 239
    .end local v0    # "map":Ljava/util/Map;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/abq/qba/e/h;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()I
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private C()I
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private D()I
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method private E()I
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private F()I
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private G()I
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    return v0
.end method

.method private H()I
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->q()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private I()I
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->q()I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private J()Ljava/lang/String;
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->d()[B

    move-result-object v0

    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/abq/qba/e/h;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K()Ljava/lang/String;
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->e()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/abq/qba/e/h;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private L()Z
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->e()[B

    move-result-object v0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->k()I

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->n()I

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->o()I

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->r()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->s()I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->t()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->u()[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->v()[B

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 491
    return v0
.end method

.method private M()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/abq/qba/e/h$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 642
    .local v1, "result":Ljava/util/Map;
    move-object v1, v0

    sget-object v2, Lcom/abq/qba/e/h$a;->a:Lcom/abq/qba/e/h$a;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->b()I

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mcc"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/abq/qba/e/h$a;->b:Lcom/abq/qba/e/h$a;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->c()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mnc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/abq/qba/e/h$a;->c:Lcom/abq/qba/e/h$a;

    invoke-direct {p0}, Lcom/abq/qba/e/h;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/abq/qba/e/h;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/abq/qba/e/h$a;->d:Lcom/abq/qba/e/h$a;

    invoke-direct {p0}, Lcom/abq/qba/e/h;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "r"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/abq/qba/e/h;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/abq/qba/e/h$a;->e:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->g:Ljava/util/Map;

    .line 647
    invoke-direct {p0}, Lcom/abq/qba/e/h;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 646
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/abq/qba/e/h$a;->f:Lcom/abq/qba/e/h$a;

    .line 649
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->r()I

    move-result v2

    const-string v3, "dp"

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sw"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->r()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v4

    .line 648
    :goto_4
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/abq/qba/e/h$a;->g:Lcom/abq/qba/e/h$a;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->s()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "w"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->s()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/abq/qba/e/h$a;->h:Lcom/abq/qba/e/h$a;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->t()I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "h"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->t()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v4

    :goto_6
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/abq/qba/e/h$a;->i:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->j:Ljava/util/Map;

    .line 653
    invoke-direct {p0}, Lcom/abq/qba/e/h;->E()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/abq/qba/e/h$a;->j:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->h:Ljava/util/Map;

    .line 655
    invoke-direct {p0}, Lcom/abq/qba/e/h;->F()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 654
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/abq/qba/e/h$a;->k:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->i:Ljava/util/Map;

    .line 657
    invoke-direct {p0}, Lcom/abq/qba/e/h;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 656
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/abq/qba/e/h$a;->l:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/abq/qba/e/h$a;->m:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->m:Ljava/util/Map;

    invoke-direct {p0}, Lcom/abq/qba/e/h;->H()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/abq/qba/e/h$a;->n:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->l:Ljava/util/Map;

    invoke-direct {p0}, Lcom/abq/qba/e/h;->I()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/abq/qba/e/h$a;->o:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "dpi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/abq/qba/e/h$a;->p:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->k:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/abq/qba/e/h$a;->q:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/abq/qba/e/h;->B()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/abq/qba/e/h$a;->r:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/abq/qba/e/h$a;->s:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->e:Ljava/util/Map;

    .line 666
    invoke-direct {p0}, Lcom/abq/qba/e/h;->C()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 665
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/abq/qba/e/h$a;->t:Lcom/abq/qba/e/h$a;

    sget-object v2, Lcom/abq/qba/e/h;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/abq/qba/e/h;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/abq/qba/e/h$a;->u:Lcom/abq/qba/e/h$a;

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->n()I

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-object v1
.end method

.method static a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/h;
    .locals 53
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 400
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 401
    .local v1, "startPosition":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 402
    .local v15, "size":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int v27, v2, v3

    .line 403
    .local v27, "mcc":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v28, v2, v3

    .line 404
    .local v28, "mnc":I
    const/4 v2, 0x2

    new-array v14, v2, [B

    .line 405
    .local v14, "language":[B
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 406
    new-array v13, v2, [B

    .line 407
    .local v13, "region":[B
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v29

    .line 409
    .local v29, "orientation":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v30

    .line 410
    .local v30, "touchscreen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v31, v2, v3

    .line 411
    .local v31, "density":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v32

    .line 412
    .local v32, "keyboard":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v33

    .line 413
    .local v33, "navigation":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v34

    .line 414
    .local v34, "inputFlags":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 415
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v35, v2, v3

    .line 416
    .local v35, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v36, v2, v3

    .line 417
    .local v36, "screenHeight":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v37, v2, v3

    .line 418
    .local v37, "sdkVersion":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v38, v2, v3

    .line 422
    .local v38, "minorVersion":I
    const/4 v2, 0x0

    .line 423
    .local v2, "screenLayout":I
    const/4 v4, 0x0

    .line 424
    .local v4, "uiMode":I
    const/4 v5, 0x0

    .line 425
    .local v5, "smallestScreenWidthDp":I
    const/4 v6, 0x0

    .line 426
    .local v6, "screenWidthDp":I
    const/4 v7, 0x0

    .line 427
    .local v7, "screenHeightDp":I
    const/4 v8, 0x4

    new-array v12, v8, [B

    .line 428
    .local v12, "localeScript":[B
    const/16 v8, 0x8

    new-array v11, v8, [B

    .line 429
    .local v11, "localeVariant":[B
    const/4 v8, 0x0

    .line 431
    .local v8, "screenLayout2":I
    const/16 v9, 0x20

    if-lt v15, v9, :cond_0

    .line 432
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Lcom/abq/qba/d/c;->a(B)I

    move-result v2

    .line 433
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Lcom/abq/qba/d/c;->a(B)I

    move-result v4

    .line 434
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    and-int v5, v9, v3

    move/from16 v39, v2

    move/from16 v40, v4

    move/from16 v41, v5

    goto :goto_0

    .line 431
    :cond_0
    move/from16 v39, v2

    move/from16 v40, v4

    move/from16 v41, v5

    .line 437
    .end local v2    # "screenLayout":I
    .end local v4    # "uiMode":I
    .end local v5    # "smallestScreenWidthDp":I
    .local v39, "screenLayout":I
    .local v40, "uiMode":I
    .local v41, "smallestScreenWidthDp":I
    :goto_0
    const/16 v2, 0x24

    if-lt v15, v2, :cond_1

    .line 438
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v6, v2, v3

    .line 439
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v7, v2, v3

    move/from16 v42, v6

    move/from16 v43, v7

    goto :goto_1

    .line 437
    :cond_1
    move/from16 v42, v6

    move/from16 v43, v7

    .line 442
    .end local v6    # "screenWidthDp":I
    .end local v7    # "screenHeightDp":I
    .local v42, "screenWidthDp":I
    .local v43, "screenHeightDp":I
    :goto_1
    const/16 v2, 0x30

    if-lt v15, v2, :cond_2

    .line 443
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 447
    :cond_2
    const/16 v2, 0x34

    if-lt v15, v2, :cond_3

    .line 448
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/abq/qba/d/c;->a(B)I

    move-result v8

    .line 449
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 450
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move/from16 v44, v8

    goto :goto_2

    .line 447
    :cond_3
    move/from16 v44, v8

    .line 454
    .end local v8    # "screenLayout2":I
    .local v44, "screenLayout2":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v45, v2, v1

    .line 455
    .local v45, "bytesRead":I
    sub-int v2, v15, v45

    new-array v10, v2, [B

    .local v10, "unknown":[B
    move-object/from16 v26, v10

    .line 456
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 458
    new-instance v46, Lcom/abq/qba/e/i;

    move-object/from16 v2, v46

    move v3, v15

    move/from16 v4, v27

    move/from16 v5, v28

    move-object v6, v14

    move-object v7, v13

    move/from16 v8, v29

    move/from16 v9, v30

    move-object/from16 v47, v10

    .end local v10    # "unknown":[B
    .local v47, "unknown":[B
    move/from16 v10, v31

    move-object/from16 v48, v11

    .end local v11    # "localeVariant":[B
    .local v48, "localeVariant":[B
    move/from16 v11, v32

    move-object/from16 v49, v12

    .end local v12    # "localeScript":[B
    .local v49, "localeScript":[B
    move/from16 v12, v33

    move-object/from16 v50, v13

    .end local v13    # "region":[B
    .local v50, "region":[B
    move/from16 v13, v34

    move-object/from16 v51, v14

    .end local v14    # "language":[B
    .local v51, "language":[B
    move/from16 v14, v35

    move/from16 v52, v15

    .end local v15    # "size":I
    .local v52, "size":I
    move/from16 v15, v36

    move/from16 v16, v37

    move/from16 v17, v38

    move/from16 v18, v39

    move/from16 v19, v40

    move/from16 v20, v41

    move/from16 v21, v42

    move/from16 v22, v43

    move-object/from16 v23, v49

    move-object/from16 v24, v48

    move/from16 v25, v44

    invoke-direct/range {v2 .. v26}, Lcom/abq/qba/e/i;-><init>(III[B[BIIIIIIIIIIIIIII[B[BI[B)V

    return-object v46
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 675
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 676
    .local v1, "value":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    return-object p2
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # [B
    .param p1, "base"    # I

    .line 473
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Language or region value must be 2 bytes."

    invoke-static {v0, v4}, Lcom/abq/qba/b/b;->a(ZLjava/lang/Object;)V

    .line 474
    aget-byte v0, p0, v3

    if-nez v0, :cond_1

    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    .line 475
    const-string v0, ""

    return-object v0

    .line 477
    :cond_1
    aget-byte v0, p0, v3

    invoke-static {v0}, Lcom/abq/qba/d/c;->a(B)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 478
    const/4 v0, 0x3

    new-array v4, v0, [B

    const/4 v5, 0x0

    .line 479
    .local v5, "result":[B
    move-object v5, v4

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, p1

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 480
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xe0

    ushr-int/lit8 v4, v4, 0x5

    add-int/2addr v4, p1

    aget-byte v6, p0, v3

    and-int/2addr v6, v0

    shl-int/lit8 v0, v6, 0x3

    add-int/2addr v4, v0

    int-to-byte v0, v4

    aput-byte v0, v5, v2

    .line 481
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x7c

    ushr-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 482
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 484
    .end local v5    # "result":[B
    :cond_2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/abq/qba/e/h;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()[B
.end method

.method public abstract e()[B
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()I
.end method

.method public abstract p()I
.end method

.method public abstract q()I
.end method

.method public abstract r()I
.end method

.method public abstract s()I
.end method

.method public abstract t()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 567
    invoke-direct {p0}, Lcom/abq/qba/e/h;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "default"

    return-object v0

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/abq/qba/e/h;->M()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 571
    .local v1, "parts":Ljava/util/Collection;
    move-object v1, v0

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 572
    invoke-static {}, Lcom/abq/qba/b/a;->a()Lcom/abq/qba/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/abq/qba/b/a;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u()[B
.end method

.method public abstract v()[B
.end method

.method public abstract w()I
.end method

.method public abstract x()[B
.end method

.method public final y()[B
    .locals 3

    .line 522
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 523
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 524
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->b()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 525
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->c()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->d()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 528
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->f()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->g()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 530
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->h()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->i()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 532
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->j()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 533
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->k()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 534
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 535
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->l()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 536
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->m()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 537
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->n()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 538
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->o()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 540
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->p()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->q()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 543
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->r()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v0

    const/16 v2, 0x24

    if-lt v0, v2, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->s()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 548
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->t()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->u()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 553
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->v()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->a()I

    move-result v0

    const/16 v2, 0x34

    if-lt v0, v2, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->w()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 560
    :cond_3
    invoke-virtual {p0}, Lcom/abq/qba/e/h;->x()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
