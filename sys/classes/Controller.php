<?php

/**
 * Апстрактна класа контролера. Сваки контролер треба да проширује ову класу.
 */
abstract class Controller {

	/**
	 * Подаци који се деле између контролера и шаблона приказа
	 * @var array
	 */
	private $data = [];

	/**
	 * Подразумевани метод сваког контролера
	 * @return void
	 */
	public function index() {}

	/**
	 * Додавање нове променљиве у низ података
	 * @param string $key Назив променљиве
	 * @param mixed $value Вредност променљиве
	 * @return void
	 */
	final protected function set($key, $value) {
		$this->data[$key] = $value;
	}

	/**
	 * Враћање низа података
	 * @return array
	 */
	final public function getData() {
		return $this->data;
	}

}
