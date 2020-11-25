.class Lcom/android/server/am/OpForceDarkController$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OpForceDarkController$zta$zta;
    }
.end annotation


# instance fields
.field private final AB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OpForceDarkController$you;",
            ">;"
        }
    .end annotation
.end field

.field private BB:I

.field private CB:I

.field private EB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OpForceDarkController$zta$zta;",
            ">;"
        }
    .end annotation
.end field

.field private isPrivileged:Z

.field final synthetic this$0:Lcom/android/server/am/OpForceDarkController;

.field private yB:Ljava/lang/String;

.field private final zB:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, zB:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, isPrivileged:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, AB:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, BB:I

    iput p1, p0, CB:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, EB:Ljava/util/HashMap;

    return-void
.end method

.method private No()Lcom/android/server/am/OpForceDarkController$you;
    .locals 3

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, CB:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, AB:Ljava/util/List;

    iget p0, p0, CB:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OpForceDarkController$you;

    monitor-exit v0

    return-object p0

    :cond_0
    iget v1, p0, BB:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, AB:Ljava/util/List;

    iget p0, p0, BB:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OpForceDarkController$you;

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$2000(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/OpForceDarkController$you;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Oo()V
    .locals 8

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, yB:Ljava/lang/String;

    const-string v2, "OnePlus.ForceDark.Global.Config.DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, p0, BB:I

    iput v2, p0, CB:I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget-object v3, p0, yB:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/am/OpForceDarkController;->access$2100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)I

    move-result v1

    move v3, v2

    :goto_0
    iget-object v4, p0, AB:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, AB:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OpForceDarkController$you;

    iget-boolean v6, v4, Lcom/android/server/am/OpForceDarkController$you;->FB:Z

    if-eqz v6, :cond_1

    iput v3, p0, BB:I

    iget v6, p0, CB:I

    if-ne v6, v5, :cond_1

    iput v3, p0, CB:I

    :cond_1
    iget-object v4, v4, Lcom/android/server/am/OpForceDarkController$you;->GB:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, CB:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const-string v3, "Mark Most Match Cfg: pkg = %s , AppFallBack = %s, AppBest = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, yB:Ljava/lang/String;

    aput-object v6, v4, v2

    iget v2, p0, BB:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, AB:Ljava/util/List;

    iget v6, p0, BB:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OpForceDarkController$you;

    invoke-virtual {v2}, Lcom/android/server/am/OpForceDarkController$you;->debugToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "Null"

    :goto_2
    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/4 v2, 0x2

    iget v7, p0, CB:I

    if-eq v7, v5, :cond_5

    iget-object v5, p0, AB:Ljava/util/List;

    iget p0, p0, CB:I

    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OpForceDarkController$you;

    invoke-virtual {p0}, Lcom/android/server/am/OpForceDarkController$you;->debugToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, "Null"

    :goto_3
    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v6}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Po()V
    .locals 3

    invoke-virtual {p0}, Cc()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v2, p0, v1}, Lcom/android/server/am/OpForceDarkController;->access$1900(Lcom/android/server/am/OpForceDarkController;Lcom/android/server/am/OpForceDarkController$zta;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Zb(I)Lcom/android/server/am/OpForceDarkController$zta$zta;
    .locals 2

    iget-object v0, p0, EB:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OpForceDarkController$zta$zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OpForceDarkController$zta$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OpForceDarkController$zta$zta;-><init>(Lcom/android/server/am/OpForceDarkController$zta;Lcom/android/server/am/w;)V

    iget-object p0, p0, EB:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic you(Lcom/android/server/am/OpForceDarkController$zta;)V
    .locals 0

    invoke-direct {p0}, Oo()V

    return-void
.end method

.method private zta(Lcom/android/server/am/OpForceDarkController$you;Lcom/android/server/am/OpForceDarkController$you;)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    iget p0, p2, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    iput p0, p1, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    :cond_1
    iget p0, p1, Lcom/android/server/am/OpForceDarkController$you;->WB:I

    if-ne p0, v0, :cond_2

    iget p0, p2, Lcom/android/server/am/OpForceDarkController$you;->WB:I

    iput p0, p1, Lcom/android/server/am/OpForceDarkController$you;->WB:I

    :cond_2
    iget p0, p1, Lcom/android/server/am/OpForceDarkController$you;->XB:I

    if-ne p0, v0, :cond_3

    iget p0, p2, Lcom/android/server/am/OpForceDarkController$you;->XB:I

    iput p0, p1, Lcom/android/server/am/OpForceDarkController$you;->XB:I

    :cond_3
    iget p0, p1, Lcom/android/server/am/OpForceDarkController$you;->YB:I

    if-ne p0, v0, :cond_4

    iget p0, p2, Lcom/android/server/am/OpForceDarkController$you;->YB:I

    iput p0, p1, Lcom/android/server/am/OpForceDarkController$you;->YB:I

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OpForceDarkController$zta;)Z
    .locals 0

    iget-boolean p0, p0, isPrivileged:Z

    return p0
.end method


# virtual methods
.method Ac()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, EB:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, r(I)Lcom/android/server/am/OpForceDarkController$you;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Pkg %s, Privileged %s, AppFallBackIdx = %d | AppTargetIdx = %d | Config  %s | CurVerCode = %d "

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, yB:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, p0, isPrivileged:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, BB:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, CB:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v3}, Lcom/android/server/am/OpForceDarkController$you;->debugToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x5

    iget-object v7, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget-object v8, p0, yB:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/am/OpForceDarkController;->access$2100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method Bc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/OpForceDarkController$you;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, AB:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method Cc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, EB:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method Dc()Z
    .locals 0

    iget-boolean p0, p0, isPrivileged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public clone()Lcom/android/server/am/OpForceDarkController$zta;
    .locals 4

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/am/OpForceDarkController$zta;

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {v1, v2}, <init>(Lcom/android/server/am/OpForceDarkController;)V

    iget-object v2, p0, yB:Ljava/lang/String;

    iput-object v2, v1, yB:Ljava/lang/String;

    iget-boolean v2, p0, isPrivileged:Z

    iput-boolean v2, v1, isPrivileged:Z

    iget-object v2, v1, AB:Ljava/util/List;

    iget-object v3, p0, AB:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, EB:Ljava/util/HashMap;

    iget-object v3, p0, EB:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget v2, p0, BB:I

    iput v2, v1, BB:I

    iget p0, p0, CB:I

    iput p0, v1, CB:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, clone()Lcom/android/server/am/OpForceDarkController$zta;

    move-result-object p0

    return-object p0
.end method

.method kb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, yB:Ljava/lang/String;

    return-object p0
.end method

.method oif(II)I
    .locals 10

    invoke-direct {p0}, No()Lcom/android/server/am/OpForceDarkController$you;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/16 v4, 0x69

    const/16 v5, 0x66

    const/16 v6, 0x67

    const/16 v7, 0x68

    const/16 v8, 0x64

    const/16 v9, 0x65

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, p1

    :goto_0
    move v1, v2

    move v0, v6

    goto/16 :goto_6

    :pswitch_1
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-ne v0, v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_4

    goto :goto_1

    :pswitch_2
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-nez v0, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, p1

    :goto_1
    move v1, v2

    move v0, v4

    goto :goto_6

    :pswitch_3
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    move v8, v9

    goto :goto_2

    :cond_6
    move v8, p1

    :goto_2
    move v1, v3

    move v0, v8

    goto :goto_6

    :pswitch_4
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-ne v0, v3, :cond_7

    move v5, v8

    goto :goto_3

    :cond_7
    if-ne v0, v1, :cond_9

    goto :goto_3

    :pswitch_5
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-nez v0, :cond_8

    move v5, v9

    goto :goto_3

    :cond_8
    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_9
    move v5, p1

    :goto_3
    move v1, v3

    move v0, v5

    goto :goto_6

    :cond_a
    :pswitch_6
    iget v0, v0, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-nez v0, :cond_b

    const/16 v0, 0x6b

    :goto_4
    move v1, v2

    goto :goto_6

    :cond_b
    if-ne v0, v1, :cond_c

    const/16 v0, 0x6c

    goto :goto_4

    :cond_c
    if-ne v0, v3, :cond_d

    const/16 v0, 0x6a

    move v1, v3

    goto :goto_6

    :cond_d
    :goto_5
    move v0, v3

    :goto_6
    invoke-direct {p0, p2}, Zb(I)Lcom/android/server/am/OpForceDarkController$zta$zta;

    move-result-object p2

    iget v4, p2, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    if-eq v4, v1, :cond_e

    iput v1, p2, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    iget-object v4, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, yB:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, p1}, Lcom/android/server/am/OpForceDarkController;->access$1600(Lcom/android/server/am/OpForceDarkController;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const/4 p1, 0x2

    iget-object v6, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v6, v0}, Lcom/android/server/am/OpForceDarkController;->access$1600(Lcom/android/server/am/OpForceDarkController;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 p1, 0x3

    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, p1

    const-string p0, "Gen AppOps Mode:  pkg = %s , Mode %s -> %s, State %s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    iput-boolean v3, p2, Lcom/android/server/am/OpForceDarkController$zta$zta;->xB:Z

    :cond_e
    return v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method q(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1}, r(I)Lcom/android/server/am/OpForceDarkController$you;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "pkgName"

    iget-object v3, p0, yB:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "privileged"

    iget-boolean p0, p0, isPrivileged:Z

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "enable"

    iget v2, p1, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "swDark"

    iget v2, p1, Lcom/android/server/am/OpForceDarkController$you;->WB:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "swEnhance"

    iget v2, p1, Lcom/android/server/am/OpForceDarkController$you;->XB:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "jsInject"

    iget v2, p1, Lcom/android/server/am/OpForceDarkController$you;->YB:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, ""

    iget-object v2, p1, Lcom/android/server/am/OpForceDarkController$you;->HB:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "specialActions"

    iget-object p1, p1, Lcom/android/server/am/OpForceDarkController$you;->HB:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method qbh(II)V
    .locals 8

    invoke-direct {p0, p2}, Zb(I)Lcom/android/server/am/OpForceDarkController$zta$zta;

    move-result-object v0

    iget v1, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v2, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    goto :goto_0

    :pswitch_1
    iput v3, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    goto :goto_0

    :pswitch_2
    iput v4, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    :goto_0
    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, yB:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p1, v1}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x2

    iget-object v6, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget v7, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "AppOps Change: pkg = %s , State %s -> %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    iget p1, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    if-eq v1, p1, :cond_0

    iput-boolean v4, v0, Lcom/android/server/am/OpForceDarkController$zta$zta;->xB:Z

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1, p0, p2}, Lcom/android/server/am/OpForceDarkController;->access$1900(Lcom/android/server/am/OpForceDarkController;Lcom/android/server/am/OpForceDarkController$zta;I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final r(I)Lcom/android/server/am/OpForceDarkController$you;
    .locals 8

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Zb(I)Lcom/android/server/am/OpForceDarkController$zta$zta;

    move-result-object p1

    iget-object v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->xB:Z

    if-nez v1, :cond_0

    iget-object p0, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-direct {p0}, No()Lcom/android/server/am/OpForceDarkController$you;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/OpForceDarkController$you;->Ec()Lcom/android/server/am/OpForceDarkController$you;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget v1, p0, BB:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget-object v2, p0, AB:Ljava/util/List;

    iget v3, p0, BB:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OpForceDarkController$you;

    invoke-direct {p0, v1, v2}, zta(Lcom/android/server/am/OpForceDarkController$you;Lcom/android/server/am/OpForceDarkController$you;)V

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v2}, Lcom/android/server/am/OpForceDarkController;->access$2000(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/OpForceDarkController$you;

    move-result-object v2

    invoke-direct {p0, v1, v2}, zta(Lcom/android/server/am/OpForceDarkController$you;Lcom/android/server/am/OpForceDarkController$you;)V

    iget-object v1, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget v1, v1, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    iget v2, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iput v3, v2, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->wB:I

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iput v4, v2, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget v2, v2, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    if-eq v1, v2, :cond_4

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const-string v5, "Config for { %s } : RawConfig %s , Final %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, yB:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-virtual {v7, v1}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iget-object v3, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    iget v3, v3, Lcom/android/server/am/OpForceDarkController$you;->enable:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OpForceDarkController;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v4}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :cond_4
    iput-boolean v4, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->xB:Z

    iget-object p0, p1, Lcom/android/server/am/OpForceDarkController$zta$zta;->vB:Lcom/android/server/am/OpForceDarkController$you;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sis(Lcom/android/server/am/OpForceDarkController$zta;)Z
    .locals 1

    iget-object v0, p0, zB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, AB:Ljava/util/List;

    invoke-virtual {p1}, Bc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, yB:Ljava/lang/String;

    return-void
.end method

.method you(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, zB:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, AB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, AB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, -0x1

    iput v2, p0, BB:I

    iput v2, p0, CB:I

    :cond_1
    const-string v2, "pkgName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, yB:Ljava/lang/String;

    const-string v2, "privileged"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, isPrivileged:Z

    const-string v2, "configs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Lcom/android/server/am/OpForceDarkController$you;

    iget-object v4, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {v3, v4}, Lcom/android/server/am/OpForceDarkController$you;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/OpForceDarkController$you;->sis(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, AB:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse Ver Item Fail For "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, yB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Oo()V

    invoke-direct {p0}, Po()V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method
