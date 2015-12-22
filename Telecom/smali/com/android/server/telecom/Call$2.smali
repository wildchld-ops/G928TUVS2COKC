.class final Lcom/android/server/telecom/Call$2;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    check-cast p4, Lcom/android/server/telecom/Call;

    # invokes: Lcom/android/server/telecom/Call;->setPhoto(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    invoke-static {p4, p2, p3, p1}, Lcom/android/server/telecom/Call;->access$100(Lcom/android/server/telecom/Call;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method
