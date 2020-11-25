.class public Lcom/android/server/am/ugm$zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ugm$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field public mRecord:Lcom/android/server/am/ugm$zta;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/ugm$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/am/ugm$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/gwm;)V

    iput-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/ugm$zta;
    .locals 0

    iget-object p0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/android/server/am/ugm$zta$zta;
    .locals 1

    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    invoke-static {v0, p1}, Lcom/android/server/am/ugm$zta;->sis(Lcom/android/server/am/ugm$zta;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/android/server/am/ugm$zta$zta;
    .locals 3

    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    invoke-static {v0}, Lcom/android/server/am/ugm$zta;->zta(Lcom/android/server/am/ugm$zta;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/am/ugm$zta;->you(Lcom/android/server/am/ugm$zta;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/android/server/am/ugm$zta$zta;
    .locals 1

    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    invoke-static {v0, p1}, Lcom/android/server/am/ugm$zta;->zta(Lcom/android/server/am/ugm$zta;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setLevel(I)Lcom/android/server/am/ugm$zta$zta;
    .locals 1

    iget-object v0, p0, mRecord:Lcom/android/server/am/ugm$zta;

    invoke-static {v0, p1}, Lcom/android/server/am/ugm$zta;->zta(Lcom/android/server/am/ugm$zta;I)I

    return-object p0
.end method
