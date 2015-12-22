.class public Lcom/android/settings/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$AppArrayAdapter;
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setPackageNames([Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    array-length v11, p1

    new-array v1, v11, [Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    :goto_0
    array-length v11, p1

    if-ge v5, v11, :cond_0

    :try_start_0
    aget-object v11, p1, v5

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    aput-object v11, v1, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v10, -0x1

    move-object v3, v1

    array-length v8, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v0, v3, v6

    if-eqz v0, :cond_2

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v2, v7

    iget-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v7

    if-eqz p2, :cond_1

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v10, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    :goto_3
    return-void

    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v11

    goto :goto_1
.end method
