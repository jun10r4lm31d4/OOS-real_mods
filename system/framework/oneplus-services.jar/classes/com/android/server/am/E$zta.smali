.class Lcom/android/server/am/E$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/E;


# direct methods
.method constructor <init>(Lcom/android/server/am/E;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/am/E;

    invoke-static {v0, p1}, Lcom/android/server/am/E;->zta(Lcom/android/server/am/E;Lorg/json/JSONArray;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/E;

    invoke-static {p0}, Lcom/android/server/am/E;->zta(Lcom/android/server/am/E;)V

    return-void
.end method