.class Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;
.super Ljava/lang/Object;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
        ">;"
    }
.end annotation


# instance fields
.field private mPoolObjects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, mPoolObjects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 1

    iget-object v0, p0, mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, mPoolObjects:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    iget-object p0, p0, this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    return-object v0
.end method

.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, acquire()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    return-object p0
.end method

.method public release(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z
    .locals 0

    iget-object p0, p0, mPoolObjects:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p0, p1}, release(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z

    move-result p0

    return p0
.end method
