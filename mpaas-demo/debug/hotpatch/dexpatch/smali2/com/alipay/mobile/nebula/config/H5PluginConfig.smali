.class public Lcom/alipay/mobile/nebula/config/H5PluginConfig;
.super Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
.source "H5PluginConfig.java"


# static fields
.field public static final DEFAULT_LAZY_INIT:Z = true

.field public static final TAG:Ljava/lang/String; = "H5PluginConfig"

.field private static final VERSION_PLUGIN:B = 0x1t

.field private static sDisableConfigServiceOpt:Ljava/lang/Boolean;


# instance fields
.field public bundleName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public events:Ljava/lang/String;

.field public lazyInit:Z

.field public scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->sDisableConfigServiceOpt:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "events"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->init()V

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setEvents(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "events"    # Ljava/lang/String;
    .param p5, "lazyInit"    # Z

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->init()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 50
    iput-boolean p5, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    .line 51
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setEvents(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "events"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->init()V

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setEventsList(Ljava/util/List;)V

    .line 71
    return-void
.end method

.method private init()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    .line 82
    return-void
.end method


# virtual methods
.method public configInvalid()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    return v0

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .locals 1
    .param p1, "bis"    # Ljava/io/BufferedInputStream;

    .line 140
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->mFormatVersion:B

    .line 141
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->events:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    .line 146
    return-object p0
.end method

.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 169
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 152
    return v1

    .line 151
    :cond_0
    move v2, v1

    .line 156
    .local v2, "result":I
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 157
    .end local v2    # "result":I
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 158
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 159
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    .line 161
    return v2
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .locals 1
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;

    .line 129
    iget-byte v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->events:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 135
    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    move-result-object p1

    return-object p1
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "events"    # Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->sDisableConfigServiceOpt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "\\|"

    const-string v2, "H5PluginConfig"

    if-nez v0, :cond_2

    .line 99
    const-string v0, " "

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 100
    move-object p1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    return-void

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "add event configs "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    .end local v0    # "list":Ljava/util/List;
    return-void

    .line 108
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 109
    .local v3, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    .local v1, "event":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 111
    move-object v1, v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    const-string v4, "invalid empty event"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add event config "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "event":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v3    # "list":Ljava/util/List;
    :cond_4
    return-void
.end method

.method public setEventsList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void

    .line 86
    :cond_1
    :goto_0
    return-void
.end method
