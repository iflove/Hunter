.class synthetic Lcom/squareup/wire/MessageAdapter$1;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$squareup$wire$Message$Datatype:[I

.field static final synthetic $SwitchMap$com$squareup$wire$WireType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 688
    invoke-static {}, Lcom/squareup/wire/WireType;->values()[Lcom/squareup/wire/WireType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    sget-object v3, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-virtual {v3}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    sget-object v4, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-virtual {v4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    sget-object v5, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {v5}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    sget-object v6, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v6}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    sget-object v7, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v7}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 412
    :goto_5
    invoke-static {}, Lcom/squareup/wire/Message$Datatype;->values()[Lcom/squareup/wire/Message$Datatype;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    :try_start_6
    sget-object v7, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v7}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v6, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v6}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    return-void
.end method
