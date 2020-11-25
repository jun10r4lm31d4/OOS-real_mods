.class Lcom/android/providers/media/RingtonePickerActivity$BadgedRingtoneAdapter;
.super Landroid/widget/CursorAdapter;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgedRingtoneAdapter"
.end annotation


# instance fields
.field private final mIsManagedProfile:Z

.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-boolean p4, p0, mIsManagedProfile:Z

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const p2, 0x7f040001

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, mIsManagedProfile:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p2}, Lcom/android/providers/media/RingtonePickerActivity;->access$800(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object p2

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p3}, Lcom/android/providers/media/RingtonePickerActivity;->access$1000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result p3

    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p3

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    iget-object v2, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$1000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne p3, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const p2, 0x7f040002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object p2, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {p2}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p0, p0, this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-static {p0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/4 p3, -0x1

    invoke-virtual {p2, p0, p3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getItemId(I)J
    .locals 0

    if-gez p1, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f050001

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
