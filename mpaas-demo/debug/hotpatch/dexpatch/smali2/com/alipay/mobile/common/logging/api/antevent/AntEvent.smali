.class public Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
.super Ljava/lang/Object;
.source "AntEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->d:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->e:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->f:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->g:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->h:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->i:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->j:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "extParamsSize":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent$1;

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventID"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getAbtestId()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEventID()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderBizType()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedAbtest()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->j:Z

    return v0
.end method

.method public send()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getEventLogger()Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEventUtil;->getLogCategory(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;->antEvent(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V

    .line 215
    return-void
.end method

.method setAbtestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "abtestId"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->h:Ljava/lang/String;

    .line 195
    return-void
.end method

.method setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->b:Ljava/lang/String;

    .line 135
    return-void
.end method

.method setExtParams(Ljava/util/Map;)V
    .locals 0
    .param p1, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    .line 175
    return-void
.end method

.method setLoggerLevel(I)V
    .locals 0
    .param p1, "loggerLevel"    # I

    .line 142
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    .line 143
    return-void
.end method

.method setNeedAbtest(Z)V
    .locals 0
    .param p1, "needAbtest"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->j:Z

    .line 211
    return-void
.end method

.method setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->g:Ljava/lang/String;

    .line 183
    return-void
.end method

.method setParam1(Ljava/lang/String;)V
    .locals 0
    .param p1, "param1"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->d:Ljava/lang/String;

    .line 151
    return-void
.end method

.method setParam2(Ljava/lang/String;)V
    .locals 0
    .param p1, "param2"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->e:Ljava/lang/String;

    .line 159
    return-void
.end method

.method setParam3(Ljava/lang/String;)V
    .locals 0
    .param p1, "param3"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->f:Ljava/lang/String;

    .line 167
    return-void
.end method

.method setRenderBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "renderBizType"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->i:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->j:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    .line 97
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method
