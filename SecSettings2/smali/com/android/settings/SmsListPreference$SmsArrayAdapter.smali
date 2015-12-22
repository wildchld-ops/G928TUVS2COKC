.class public Lcom/android/settings/SmsListPreference$SmsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmsListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    iput p5, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    iput-object p4, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0401d7

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100072

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    const v6, 0x7f10041a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u200f\u200e"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    const v6, 0x7f100419

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v5
.end method
