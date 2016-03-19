.class public Lcom/ime/framework/view/KeboardKeyInfo;
.super Ljava/lang/Object;
.source "KeboardKeyInfo.java"


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Lcom/ime/framework/view/Keyboard$Key;)Lcom/ime/framework/view/KeboardKeyInfo;
    .locals 2

    new-instance v0, Lcom/ime/framework/view/KeboardKeyInfo;

    invoke-direct {v0}, Lcom/ime/framework/view/KeboardKeyInfo;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->codes:[I

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->edgeFlags:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->height:I

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->on:Z

    iput-boolean v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->on:Z

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->popupResId:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->popupResId:I

    iget-boolean v1, p0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    iput-boolean v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->pressed:Z

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->x:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->y:I

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->width:I

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ime/framework/view/Keyboard$Key;->gap:I

    iput v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->gap:I

    iget-object v1, p0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    return-object v0
.end method
