.class Lcom/android/providers/media/RingtonePickerActivity$2;
.super Landroid/os/AsyncTask;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtonePickerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    :try_start_0
    iget-object v0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$800(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p0}, Lcom/android/providers/media/RingtonePickerActivity;->access$700(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/media/RingtoneManager;->addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "RingtonePickerActivity"

    const-string v0, "Unable to add new ringtone"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, doInBackground([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p0}, Lcom/android/providers/media/RingtonePickerActivity;->access$900(Lcom/android/providers/media/RingtonePickerActivity;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const p1, 0x7f08004b

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
