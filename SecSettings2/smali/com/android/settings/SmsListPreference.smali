.class public Lcom/android/settings/SmsListPreference;
.super Landroid/preference/ListPreference;
.source "SmsListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsListPreference$SmsArrayAdapter;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SmsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0401d7

    invoke-virtual {p0}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SmsListPreference$SmsArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method
