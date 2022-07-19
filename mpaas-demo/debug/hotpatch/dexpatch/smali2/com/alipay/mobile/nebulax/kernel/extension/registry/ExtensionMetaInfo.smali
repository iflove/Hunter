.class public Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
.super Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
.source "ExtensionMetaInfo.java"


# static fields
.field private static final EXTENSION_VERSION:B = 0xbt

.field private static final TAG:Ljava/lang/String; = "ExtensionMetaInfo"


# instance fields
.field public bundleName:Ljava/lang/String;

.field public extensionClass:Ljava/lang/String;

.field public filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filterStrs:Ljava/lang/String;

.field public isLazy:Z

.field public scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public scopeClassName:Ljava/lang/String;

.field public type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 35
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 102
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 105
    iput-boolean p6, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 106
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    .line 109
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 110
    invoke-direct {p0, p4}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 111
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    const-string p2, "normal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->NORMAL:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->BRIDGE:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 42
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 63
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;",
            "Z)V"
        }
    .end annotation

    .line 87
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;-><init>(B)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 90
    iput-boolean p6, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 91
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 92
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 93
    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;Z)V"
        }
    .end annotation

    .line 78
    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->NORMAL:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 70
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    .line 71
    return-void
.end method

.method private filterStrToList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    return-object v1

    .line 130
    :cond_0
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    return-object v1

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add event configs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtensionMetaInfo"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getScopeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 117
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/node/Scope;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 118
    return-object p1

    .line 122
    :cond_0
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    const-string v0, "ExtensionMetaInfo"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1

    .line 152
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->mFormatVersion:B

    .line 153
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 157
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 160
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 161
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->NORMAL:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->BRIDGE:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    .line 162
    return-object p0
.end method

.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1

    .line 140
    iget-byte v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method
