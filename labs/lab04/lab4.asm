; hello.asm
SECTION .data			 ; Начало секции данных
  hello: DB 'Nesterovich Vasiliy', 10
  helloLen: EQU $-hello		 ; Длина строки hello

SECTION .text			 ; Начало секции кода
  GLOBAL _start

_start:				 ; Точка входа
  mov eax, 4			 ; Системный вызов для записи (sys_write)
  mov ebx, 1			 ; Описатель файла '1' - стандартный вывод
  mov ecx, hello		 ; Адрес строки hello в ecx
  mov edx, helloLen		 ; Вызов ядра
  int 80h

  mov eax, 1			 ; Системный вызов для выхода (sys_exit)
  mov ebx, 0			 ; Выход с кодом возврата '0' (без ошибок)
  int 80h			 ; Вызов ядра
