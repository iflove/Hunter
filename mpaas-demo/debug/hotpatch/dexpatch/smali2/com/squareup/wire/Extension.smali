.class public final Lcom/squareup/wire/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Extension$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage<",
        "*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/squareup/wire/Extension<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final datatype:Lcom/squareup/wire/Message$Datatype;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final label:Lcom/squareup/wire/Message$Label;

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;)V
    .locals 0
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "tag"    # I
    .param p6, "label"    # Lcom/squareup/wire/Message$Label;
    .param p7, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/squareup/wire/Message$Label;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/wire/Message;>;"
    .local p3, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/wire/ProtoEnum;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    .line 247
    iput-object p4, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    .line 248
    iput p5, p0, Lcom/squareup/wire/Extension;->tag:I

    .line 249
    iput-object p7, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 250
    iput-object p6, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    .line 251
    iput-object p2, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    .line 252
    iput-object p3, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/Class;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/squareup/wire/Message$Label;
    .param p7, "x6"    # Lcom/squareup/wire/Message$Datatype;
    .param p8, "x7"    # Lcom/squareup/wire/Extension$1;

    .line 56
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    invoke-direct/range {p0 .. p7}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method public static boolExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 203
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static bytesExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .line 213
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static doubleExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 223
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static enumExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;TE;>;"
        }
    .end annotation

    .line 228
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v6, Lcom/squareup/wire/Extension$Builder;

    sget-object v4, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v6
.end method

.method public static fixed32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static fixed64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static floatExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 218
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static int32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 153
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static int64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 178
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static messageExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;TM;>;"
        }
    .end annotation

    .line 233
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v6, Lcom/squareup/wire/Extension$Builder;

    sget-object v4, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v6
.end method

.method public static sfixed32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sfixed64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 198
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sint32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sint64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 183
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static stringExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static uint32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static uint64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/wire/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 188
    .local p0, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/squareup/wire/Extension;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Extension<",
            "**>;)I"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p1, "o":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 260
    return v0

    .line 262
    :cond_0
    iget v1, p0, Lcom/squareup/wire/Extension;->tag:I

    iget v2, p1, Lcom/squareup/wire/Extension;->tag:I

    if-eq v1, v2, :cond_1

    .line 263
    sub-int/2addr v1, v2

    return v1

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    if-eq v1, v2, :cond_2

    .line 266
    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    if-eq v1, v2, :cond_3

    .line 269
    invoke-virtual {v1}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    iget-object v0, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 275
    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 277
    :cond_5
    iget-object v1, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 278
    iget-object v0, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 280
    :cond_6
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 56
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    check-cast p1, Lcom/squareup/wire/Extension;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/Extension;->compareTo(Lcom/squareup/wire/Extension;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 284
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    instance-of v0, p1, Lcom/squareup/wire/Extension;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/Extension;

    invoke-virtual {p0, v0}, Lcom/squareup/wire/Extension;->compareTo(Lcom/squareup/wire/Extension;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDatatype()Lcom/squareup/wire/Message$Datatype;
    .locals 1

    .line 322
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    return-object v0
.end method

.method public getEnumType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtendedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    return-object v0
.end method

.method public getLabel()Lcom/squareup/wire/Message$Label;
    .locals 1

    .line 326
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 314
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 318
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget v0, p0, Lcom/squareup/wire/Extension;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 288
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    iget v0, p0, Lcom/squareup/wire/Extension;->tag:I

    .line 289
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v2}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v2}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 292
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 293
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    .line 294
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 298
    .local p0, "this":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;TE;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/squareup/wire/Extension;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "[%s %s %s = %d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
