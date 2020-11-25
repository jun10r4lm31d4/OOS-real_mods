.class Lcom/android/server/am/sis$zta;
.super Lcom/android/server/am/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/sis;


# direct methods
.method private constructor <init>(Lcom/android/server/am/sis;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/sis;

    invoke-direct {p0}, Lcom/android/server/am/rtg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/sis;Lcom/android/server/am/you;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/sis;)V

    return-void
.end method


# virtual methods
.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 2

    sget-boolean p6, Lcom/android/server/am/obl;->Uo:Z

    if-nez p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x0

    if-nez p5, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p6, 0x1

    :cond_1
    iget-object p4, p0, this$0:Lcom/android/server/am/sis;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteProcessStateChanged uid = "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid = "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pkg = "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isProcessStart = "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isMainProcess = "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mTotalCount = "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p2}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;)I

    move-result p2

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTotalMem = "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p2}, Lcom/android/server/am/sis;->ssp(Lcom/android/server/am/sis;)J

    move-result-wide v0

    invoke-virtual {p7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/android/server/am/sis;->sis(Lcom/android/server/am/sis;Ljava/lang/String;)V

    iget-object p2, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p2}, Lcom/android/server/am/sis;->cno(Lcom/android/server/am/sis;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-eqz p6, :cond_5

    :try_start_0
    iget-object p4, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p4, p3}, Lcom/android/server/am/sis;->tsu(Lcom/android/server/am/sis;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->rtg(Lcom/android/server/am/sis;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p4, p1, p3}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p4, p3}, Lcom/android/server/am/sis;->ssp(Lcom/android/server/am/sis;Ljava/lang/String;)V

    iget-object p4, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p4, p1, p3}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "AppDiedStatistics"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "undefined pkg = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, this$0:Lcom/android/server/am/sis;

    invoke-static {p0}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;)I

    :cond_5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
