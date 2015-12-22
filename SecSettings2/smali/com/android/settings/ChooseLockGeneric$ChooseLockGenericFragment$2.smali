.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectFingerprintsOnlyForKnoxSingleIntegration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    const/4 v7, 0x0

    const/4 v1, 0x1

    :goto_0
    sget v9, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v1, v9, :cond_1

    shl-int v9, v11, v1

    and-int/2addr v9, v0

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    new-array v3, v7, [I

    new-array v4, v7, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/fingerprint/FingerprintManager;->getFingerprintIds()[Ljava/lang/String;

    move-result-object v6

    new-array v2, v7, [Z

    const/4 v1, 0x1

    :goto_1
    sget v9, Lcom/android/settings/fingerprint/FingerprintSettings;->FINGERPRINTS_MAX:I

    if-gt v1, v9, :cond_3

    shl-int v9, v11, v1

    and-int/2addr v9, v0

    if-eqz v9, :cond_2

    aput v1, v3, v8

    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    aput-boolean v11, v2, v8

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v9

    aget v10, v3, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v11, 0x7f0a111b

    invoke-virtual {v10, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;

    invoke-direct {v10, p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$3;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;[I)V

    invoke-virtual {v9, v4, v2, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v11, 0x7f0a085c

    invoke-virtual {v10, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;

    invoke-direct {v11, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v11, 0x7f0a085d

    invoke-virtual {v10, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;

    invoke-direct {v11, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
