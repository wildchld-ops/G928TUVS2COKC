.class Lcom/android/incallui/SecVoiceCallCardFragment$17;
.super Landroid/os/AsyncTask;
.source "SecVoiceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->applyBlendedFilterIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/ImageFilterSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

.field final synthetic val$imageViewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/ImageFilterSet;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "applyBlendedFilterIfNecessary"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->colorFromBitmap(Landroid/graphics/Bitmap;)I
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$1000(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Bitmap;)I

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v2, v3, v4}, Lcom/android/incallui/BlendedFilterUtils;->generateFilterSet(IIFF)Landroid/graphics/ImageFilterSet;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment$17;->doInBackground([Ljava/lang/Void;)Landroid/graphics/ImageFilterSet;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/ImageFilterSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0

    :cond_1
    const-string v0, "setImageFilter: null"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/ImageFilterSet;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment$17;->onPostExecute(Landroid/graphics/ImageFilterSet;)V

    return-void
.end method
