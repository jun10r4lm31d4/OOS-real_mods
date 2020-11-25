.class Lcom/android/providers/media/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p1}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    iget-object v0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$100(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v0

    add-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "audio/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/ogg"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const/16 p2, 0x12c

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->access$200(Lcom/android/providers/media/RingtonePickerActivity;I)V

    iget-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p1}, Lcom/android/providers/media/RingtonePickerActivity;->access$300(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p1}, Lcom/android/providers/media/RingtonePickerActivity;->access$400(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;Landroid/net/Uri;)V

    :cond_1
    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/providers/media/RingtonePickerActivity;->access$600(Lcom/android/providers/media/RingtonePickerActivity;II)V

    return-void
.end method
