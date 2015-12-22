.class public Lcom/android/phone/EmergencyContactItem;
.super Landroid/widget/FrameLayout;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyContactItem$10;,
        Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field private mCheckBox:Landroid/view/View;

.field private mContactText:Landroid/widget/TextView;

.field private mContactTextContainer:Landroid/widget/FrameLayout;

.field private mDeletable:Z

.field public mEmergencyCallDialog:Landroid/app/AlertDialog;

.field private mId:J

.field private mImageButton:Landroid/widget/ImageButton;

.field private mItemCheckBox:Landroid/widget/CheckBox;

.field private mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mParent:Lcom/android/phone/EmergencyContactItemContainer;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    sput-object p1, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    sput-object p1, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    sput-object p1, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyContactItem;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyContactItem;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyContactItem;)Lcom/android/phone/EmergencyContactItemContainer;
    .locals 1
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    return-void
.end method

.method private addEmergencyContact(I)V
    .locals 5
    .param p1    # I

    const-string v2, "EmergencyContactItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEmergencyContact : position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_ICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "emergency_contact_postion"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addEmergencyService()V
    .locals 8

    const-string v4, "EmergencyContactItem"

    const-string v5, "addEmergencyService : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/EmergencyContactItem$6;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/phone/EmergencyContactItem$6;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a062d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0090

    new-instance v6, Lcom/android/phone/EmergencyContactItem$8;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/EmergencyContactItem$8;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a008e

    new-instance v6, Lcom/android/phone/EmergencyContactItem$7;

    invoke-direct {v6, p0}, Lcom/android/phone/EmergencyContactItem$7;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0, v1, v3}, Lcom/android/phone/EmergencyContactItem;->setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method private getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, p2, p2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v1, -0xffff01

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    const-string v6, "EmergencyContactItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCircledBitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # I

    const/4 v3, 0x0

    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, p2, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, -0xffff01

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    const-string v9, "EmergencyContactItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCircledDrawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private init(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method private placeCall()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "emergency_contact_item"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setContactImage(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    const-string v3, "zero_emergency_dialer_layout"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    sget-object v3, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/android/phone/EmergencyContactItem;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    const v3, 0x7f02005d

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_5
    if-eq p2, v5, :cond_0

    sget-object v3, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/EmergencyContactItem;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_7
    if-eq p2, v5, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private setContactText()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    const v1, 0x7f02005d

    invoke-direct {p0, v4, v1}, Lcom/android/phone/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .param p1    # Landroid/app/AlertDialog;
    .param p2    # Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/android/phone/EmergencyContactItem$9;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/phone/EmergencyContactItem$9;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContactItem()V
    .locals 2

    const-string v0, "EmergencyContactItem"

    const-string v1, "updateContactItem : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateRemoveScreen()V

    :cond_0
    return-void
.end method

.method private updateNormalScreen()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyContactItem;->setEnabled(Z)V

    sget-object v2, Lcom/android/phone/EmergencyContactItem$10;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v3, 0x7f0a062c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f020074

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020075

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f02005f

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyContactItem;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    const-string v2, "zero_emergency_dialer_layout"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->setContactText()V

    goto :goto_0

    :cond_3
    const v1, 0x7f020073

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRemoveScreen()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyContactItem;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const v3, 0x7f1000c4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "EmergencyContactItem"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0241

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    :cond_0
    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/phone/EmergencyContactItem$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyContactItem$1;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    new-instance v1, Lcom/android/phone/EmergencyContactItem$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyContactItem$2;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeEmergencyContact(Z)V
    .locals 8
    .param p1    # Z

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyContactItem;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # Z

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-wide p2, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    iput-object p4, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    new-instance v0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "data15"

    aput-object v5, v4, v1

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParent(Lcom/android/phone/EmergencyContactItemContainer;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    return-void
.end method

.method public updateContactItem(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method public updateEmergencyContact(I)V
    .locals 6
    .param p1    # I

    const/4 v4, 0x1

    const-string v2, "EmergencyContactItem"

    const-string v3, "updateEmergencyContact..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/EmergencyContactItem$10;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ScreenType:[I

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "emergency_contacts_item_popup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0436

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0090

    new-instance v3, Lcom/android/phone/EmergencyContactItem$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$3;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a008e

    new-instance v3, Lcom/android/phone/EmergencyContactItem$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$4;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/EmergencyContactItem$5;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyContactItem$5;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0a0435

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->addEmergencyService()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyContactItem;->addEmergencyContact(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->toggle()V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->notifyCheckChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
